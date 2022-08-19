import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/blocs/auth/authentication/authentication_model.dart';
import 'package:twelv/blocs/auth/authentication/authentication_state.dart';
import 'package:twelv/services/analytics/short_analytics_tracker.dart';
import 'package:twelv/services/authentication/authentication_service.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationModel _authModel;
  final ShortAnalyticsTracker _shortAnalyticsTracker;
  late StreamSubscription<AuthenticationEvent> _authSub;
  bool _isNewLogin = false;

  AuthenticationBloc(this._authModel, this._shortAnalyticsTracker)
      : super(const AuthenticationState.initial()) {
    _authSub = _authModel.authenticationStateStream
        .map(_mapAuthServiceStateToAuthenticationEvent)
        .listen(add)
          ..onError((Object error) {
            add(_mapAuthServiceErrorToAuthenticationEvent(error));
          });
  }

  // region BLoC implementation

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield const AuthenticationState.loading();
    if (event is ByPhone) {
      _isNewLogin = true;
      await _authModel.runAuthenticateByPhoneFlow(event.phoneNumber);
    } else if (event is ConfirmSmsCode) {
      _authModel.confirmPhoneNumber(event.smsCode);
    } else if (event is VerifyPhoneNum) {
      yield const AuthenticationState.smsVerification();
    } else if (event is AuthenticationCompleted) {
      if (_isNewLogin) {
        _shortAnalyticsTracker.trackEvent(ShortAnalyticsEvent.userLogin);
      }
      _isNewLogin = false;
      yield AuthenticationState.tokenReceived(authenticationToken: event.authenticationToken);
    } else if (event is Canceled) {
      yield const AuthenticationState.initial();
    } else if (event is Error) {
      yield AuthenticationState.error(event.error, occurredAt: DateTime.now());
    } else if (event is SignOut) {
      await _authModel.signOut();
    } else if (event is ReAuthenticate) {
      await _authModel.tryToRestoreAuthenticationToken();
    } else if (event is ResendSmsCode) {
      _authModel.resendSmsCode();
    } else if (event is ByFacebook) {
      _isNewLogin = true;
      _authModel.runAuthenticateByFacebookFlow();
    } else if (event is ByApple) {
      _isNewLogin = true;
      _authModel.runAuthenticateByAppleFlow();
    }
  }

  @override
  Future<void> close() async {
    await _authSub.cancel();
    await _authModel.dispose();
    return super.close();
  }

  // endregion

  // region interactions between bloc and auth service

  AuthenticationEvent _mapAuthServiceStateToAuthenticationEvent(
          AuthenticationServiceState authenticationServiceState) =>
      authenticationServiceState.maybeMap<AuthenticationEvent>(
          error: (AuthenticationServiceStateError serviceError) =>
              AuthenticationEvent.error(serviceError.error),
          needsConfirmation: (_) => const AuthenticationEvent.verifyPhoneNum(),
          authTokenReceived: (AuthenticationServiceStateTokenReceived token) =>
              AuthenticationEvent.authenticationCompleted(authenticationToken: token.authToken),
          canceled: (_) => const AuthenticationEvent.canceled(),
          orElse: () => const AuthenticationEvent.error(AuthenticationError.unknown));

  AuthenticationEvent _mapAuthServiceErrorToAuthenticationEvent(Object error) =>
      AuthenticationEvent.error(error is AuthenticationError ? error : AuthenticationError.unknown);

// endregion
}
