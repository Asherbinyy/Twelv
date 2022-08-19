import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_welcome_event.freezed.dart';

@freezed
class LoginWelcomeEvent with _$LoginWelcomeEvent {
  const factory LoginWelcomeEvent.phoneNumberProvided({required String phoneNumber}) =
      PhoneNumberProvided;
  const factory LoginWelcomeEvent.facebookClicked() = FacebookClicked;
  const factory LoginWelcomeEvent.appleSignInClicked() = AppleSignInClicked;
}
