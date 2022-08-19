import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/zodiac/zodiac_response.dart';

part 'onboarding_zodiac_state.freezed.dart';

@freezed
@immutable
abstract class OnboardingZodiacState with _$OnboardingZodiacState {
  const factory OnboardingZodiacState.initial() = Initial;

  const factory OnboardingZodiacState.loading() = Loading;

  const factory OnboardingZodiacState.error(Exception error) = Error;

  const factory OnboardingZodiacState.succeeded(ZodiacResponse zodiac) = Succeeded;
}
