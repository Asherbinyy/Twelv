import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';
import 'package:twelv/model/profile/gender.dart';

part 'onboarding_state.freezed.dart';

@freezed
@immutable
class OnboardingState with _$OnboardingState {
  factory OnboardingState(
      {String? name,
      PlacesDetails? birthLocation,
      DateTime? birthDate,
      TimeOfDay? birthTime,
      Gender? gender,
      Gender? interestedIn,
      List<File>? photos,
      String? description,
      double? lat,
      double? lon,
      @Default(false) bool isFinished}) = _OnboardingState;
}
