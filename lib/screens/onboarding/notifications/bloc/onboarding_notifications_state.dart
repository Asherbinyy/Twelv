import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_notifications_state.freezed.dart';

@freezed
@immutable
abstract class OnboardingNotificationsState with _$OnboardingNotificationsState {
  const factory OnboardingNotificationsState.initial() = Initial;

  const factory OnboardingNotificationsState.loading() = Loading;

  const factory OnboardingNotificationsState.error(Exception error) = Error;
}
