import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_event.freezed.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.restoreSession() = RestoreSession;

  // region events from Authentication layer

  const factory AuthorizationEvent.newAuthenticationToken(String authenticationToken) =
      NewAuthenticationToken;

  const factory AuthorizationEvent.authenticationTokenLost() = AuthenticationTokenLost;

  // endregion
}
