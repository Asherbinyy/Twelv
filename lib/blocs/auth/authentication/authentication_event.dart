import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/services/authentication/authentication_service.dart';

part 'authentication_event.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticateByPhone({required String phoneNumber}) = ByPhone;

  const factory AuthenticationEvent.authenticateByFacebook() = ByFacebook;

  const factory AuthenticationEvent.authenticateByApple() = ByApple;

  const factory AuthenticationEvent.verifyPhoneNum() = VerifyPhoneNum;

  const factory AuthenticationEvent.confirmSmsCode({required String smsCode}) = ConfirmSmsCode;

  const factory AuthenticationEvent.resendSmsCode() = ResendSmsCode;

  const factory AuthenticationEvent.authenticationCompleted({required String authenticationToken}) =
      AuthenticationCompleted;

  const factory AuthenticationEvent.signOut() = SignOut;

  const factory AuthenticationEvent.reauthenticate() = ReAuthenticate;

  const factory AuthenticationEvent.canceled() = Canceled;

  const factory AuthenticationEvent.error(AuthenticationError error) = Error;
}
