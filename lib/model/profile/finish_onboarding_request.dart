import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';

part 'finish_onboarding_request.g.dart';

@JsonSerializable()
class FinishOnboardingRequest {
  @JsonKey(name: "is_onboarded", defaultValue: 1)
  final int isOnboarded;
  final Gender gender;
  @JsonKey(name: "interested_in")
  final Gender? interestedIn;
  @JsonKey(name: "about")
  final String? description;
  final double lat;
  final double lon;
  @JsonKey(name: "notification_token")
  final String? notificationsToken;
  @JsonKey(ignore: true)
  List<File>? images;

  @JsonKey(ignore: true)
  String get genderJson => _$GenderEnumMap[gender]!;

  @JsonKey(ignore: true)
  String? get interestedInJson => _$GenderEnumMap[interestedIn];

  FinishOnboardingRequest(
      {required this.gender,
      this.interestedIn,
      required this.lat,
      required this.lon,
      this.images,
      this.description,
      this.notificationsToken,
      this.isOnboarded = 1});

  factory FinishOnboardingRequest.fromOnboardingState(OnboardingState state,
          {String? notificationsToken}) =>
      FinishOnboardingRequest(
          gender: state.gender!,
          interestedIn: state.interestedIn,
          lat: state.lat!,
          lon: state.lon!,
          description: state.description,
          images: state.photos,
          notificationsToken: notificationsToken);

  factory FinishOnboardingRequest.fromJson(Map<String, dynamic> json) =>
      _$FinishOnboardingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FinishOnboardingRequestToJson(this);
}
