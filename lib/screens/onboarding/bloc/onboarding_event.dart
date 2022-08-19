import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';
import 'package:twelv/model/profile/gender.dart';

part 'onboarding_event.freezed.dart';

@freezed
@immutable
abstract class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.nameEntered({required String? name}) = NameEntered;

  const factory OnboardingEvent.birthDataEntered(
      {required DateTime? birthDate,
      required TimeOfDay? birthTime,
      required PlacesDetails? birthLocation}) = BirthDataEntered;

  const factory OnboardingEvent.genderEntered(
      {required Gender? gender, required Gender? interestedIn}) = GenderEntered;

  const factory OnboardingEvent.photoAdd({required File? file}) = PhotoAdd;

  const factory OnboardingEvent.photoDelete({required int? index}) = PhotoDelete;

  const factory OnboardingEvent.descriptionEntered({required String? description}) =
      DescriptionEntered;
  const factory OnboardingEvent.locationEntered({required double? lat, required double? lon}) =
      LocationEntered;

  const factory OnboardingEvent.finished() = Finished;
}
