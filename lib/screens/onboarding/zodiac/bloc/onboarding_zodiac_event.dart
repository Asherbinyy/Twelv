import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_zodiac_event.freezed.dart';

@freezed
@immutable
abstract class OnboardingZodiacEvent with _$OnboardingZodiacEvent {
  const factory OnboardingZodiacEvent.getZodiac() = GetZodiac;
}
