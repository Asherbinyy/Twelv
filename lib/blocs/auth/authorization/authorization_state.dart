import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_state.freezed.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.unauthorized() = Unauthorized;

  const factory AuthorizationState.authorized({required bool isOnboarded}) = Authorized;
}
