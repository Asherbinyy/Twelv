import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_birth_data_state.freezed.dart';

@freezed
@immutable
abstract class OnboardingBirthDataState with _$OnboardingBirthDataState {
  const factory OnboardingBirthDataState.initial() = Initial;
  const factory OnboardingBirthDataState.loading() = Loading;
  const factory OnboardingBirthDataState.error(Exception error) = Error;
  const factory OnboardingBirthDataState.succeeded() = Succeeded;
}
