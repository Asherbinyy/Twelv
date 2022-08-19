import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_service.freezed.dart';

abstract class AuthenticationService {
  Stream<AuthenticationServiceState> get authenticationStateStream;

  Future<void> signOut();

  Future<void> tryToRestoreAuthenticationToken();

  Future<void> runAuthenticateByPhoneFlow(String phoneNumber);

  void confirmPhoneNumber(String smsCode);

  void resendSmsCode();

  Future<void> runAuthenticateByFacebookFlow();

  Future<void> runAuthenticateByAppleFlow();
}

@freezed
class AuthenticationServiceState with _$AuthenticationServiceState {
  const factory AuthenticationServiceState.loading() = AuthenticationServiceStateLoading;

  const factory AuthenticationServiceState.error(AuthenticationError error) =
      AuthenticationServiceStateError;

  const factory AuthenticationServiceState.canceled() = AuthenticationServiceStateCanceled;

  const factory AuthenticationServiceState.needsConfirmation() =
      AuthenticationServiceStateNeedsConfirmation;

  const factory AuthenticationServiceState.authTokenReceived(String authToken) =
      AuthenticationServiceStateTokenReceived;
}

enum AuthenticationError {
  verificationTimeout,
  invalidPhoneNum,
  wrongSmsCode,
  tokenLost,
  userIssues,
  temporarilyBlocked,
  unknown
}
