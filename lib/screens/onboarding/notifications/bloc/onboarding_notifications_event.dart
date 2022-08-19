import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_notifications_event.freezed.dart';

@freezed
@immutable
abstract class OnboardingNotificationsEvent with _$OnboardingNotificationsEvent {
  const factory OnboardingNotificationsEvent.activated() = Activated;

  const factory OnboardingNotificationsEvent.skipped() = Skipped;
}
