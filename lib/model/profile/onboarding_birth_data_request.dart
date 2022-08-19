import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_birth_data_request.g.dart';

@JsonSerializable()
class OnboardingBirthDataRequest {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "datetime_of_birth")
  final String? dateTimeOfBirth;
  @JsonKey(name: "birth_location_lat")
  final double? latitudeBirth;
  @JsonKey(name: "birth_location_lon")
  final double? longitudeBirth;
  @JsonKey(name: "place_of_birth")
  final String? placeOfBirth;

  OnboardingBirthDataRequest(
      {this.name,
      this.dateTimeOfBirth,
      this.latitudeBirth,
      this.longitudeBirth,
      this.placeOfBirth});

  factory OnboardingBirthDataRequest.fromJson(Map<String, dynamic> json) =>
      _$OnboardingBirthDataRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OnboardingBirthDataRequestToJson(this);
}
