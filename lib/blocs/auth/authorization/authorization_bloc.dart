import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_state.dart';
import 'package:twelv/blocs/auth/authorization/authorization_event.dart';
import 'package:twelv/blocs/auth/authorization/authorization_model.dart';
import 'package:twelv/blocs/auth/authorization/authorization_state.dart';
import 'package:twelv/blocs/auth/authorization/models/access_token_response.dart';
import 'package:twelv/services/authentication/authentication_service.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final AuthorizationModel _model;
  final AuthenticationBloc _authenticationBloc;
  StreamSubscription<AuthorizationEvent>? _authSub;

  AuthorizationBloc(this._model, this._authenticationBloc)
      : super(const AuthorizationState.unauthorized());

  @override
  Stream<AuthorizationState> mapEventToState(AuthorizationEvent event) async* {
    if (event is RestoreSession) {
      _startObservingAuthenticationState();
    } else if (event is NewAuthenticationToken) {
      final AccessTokenResponse accessTokenResponse =
          await _model.exchangeAuthenticationToken(event.authenticationToken);
      await _model.storeCurrentUser();
      await _model.reloadNotificationsToken();
      yield AuthorizationState.authorized(isOnboarded: accessTokenResponse.isOnboarded);
    } else if (event is AuthenticationTokenLost) {
      _model.sessionHasFinished();
      yield const AuthorizationState.unauthorized();
    }
  }

  @override
  Future<void> close() {
    _authSub?.cancel();
    return super.close();
  }

  // region interactions between authentication and authorization

  void _startObservingAuthenticationState() {
    void _observeFutureStates() {
      _authSub?.cancel();
      _authSub = _authenticationBloc.stream
          .where(_isAuthenticationStateAffectingAuthorization)
          .map(_mapAuthenticationStateToAuthorizationEvent)
          .listen(add);
    }

    void _handleCurrentState() {
      if (_isAuthenticationStateAffectingAuthorization(_authenticationBloc.state)) {
        add(_mapAuthenticationStateToAuthorizationEvent(_authenticationBloc.state));
      }
    }

    _observeFutureStates();
    _handleCurrentState();
  }

  bool _isAuthenticationStateAffectingAuthorization(AuthenticationState authenticationState) =>
      authenticationState.maybeWhen(
          error: (AuthenticationError error, _) => error == AuthenticationError.tokenLost,
          tokenReceived: (_) => true,
          orElse: () => false);

  AuthorizationEvent _mapAuthenticationStateToAuthorizationEvent(
          AuthenticationState authenticationState) =>
      authenticationState.maybeMap(
          tokenReceived: (TokenReceived tokenReceived) =>
              AuthorizationEvent.newAuthenticationToken(tokenReceived.authenticationToken),
          error: (_) => const AuthorizationEvent.authenticationTokenLost(),
          orElse: () =>
              throw 'The state $authenticationState cannot be mapped to any of AuthorizationEvents');

// endregion
}
