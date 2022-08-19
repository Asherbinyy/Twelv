// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_birth_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnboardingBirthDataRequest _$OnboardingBirthDataRequestFromJson(
    Map<String, dynamic> json) {
  return OnboardingBirthDataRequest(
    name: json['name'] as String?,
    dateTimeOfBirth: json['datetime_of_birth'] as String?,
    latitudeBirth: (json['birth_location_lat'] as num?)?.toDouble(),
    longitudeBirth: (json['birth_location_lon'] as num?)?.toDouble(),
    placeOfBirth: json['place_of_birth'] as String?,
  );
}

Map<String, dynamic> _$OnboardingBirthDataRequestToJson(
        OnboardingBirthDataRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'datetime_of_birth': instance.dateTimeOfBirth,
      'birth_location_lat': instance.latitudeBirth,
      'birth_location_lon': instance.longitudeBirth,
      'place_of_birth': instance.placeOfBirth,
    };
