import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_welcome_state.freezed.dart';

@freezed
class LoginWelcomeState with _$LoginWelcomeState {
  const factory LoginWelcomeState.initial(List<String> availablePrefixes) = Initial;
  const factory LoginWelcomeState.loading() = Loading;
}
