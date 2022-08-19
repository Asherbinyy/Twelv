import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_birth_data_event.freezed.dart';

@freezed
@immutable
abstract class OnboardingBirthDataEvent with _$OnboardingBirthDataEvent {
  const factory OnboardingBirthDataEvent.birthDataEntered() = BirthDataEntered;
}
