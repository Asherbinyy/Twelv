import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/services/authentication/authentication_service.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = Initial;

  const factory AuthenticationState.loading() = Loading;

  const factory AuthenticationState.smsVerification() = SmsVerification;

  const factory AuthenticationState.tokenReceived({required String authenticationToken}) =
      TokenReceived;

  const factory AuthenticationState.error(AuthenticationError error, {DateTime? occurredAt}) =
      AuthenticationStateError;
}
