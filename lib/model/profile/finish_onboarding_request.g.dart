// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_onboarding_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinishOnboardingRequest _$FinishOnboardingRequestFromJson(
        Map<String, dynamic> json) =>
    FinishOnboardingRequest(
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      interestedIn: $enumDecodeNullable(_$GenderEnumMap, json['interested_in']),
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      description: json['about'] as String?,
      notificationsToken: json['notification_token'] as String?,
      isOnboarded: json['is_onboarded'] as int? ?? 1,
    );

Map<String, dynamic> _$FinishOnboardingRequestToJson(
        FinishOnboardingRequest instance) =>
    <String, dynamic>{
      'is_onboarded': instance.isOnboarded,
      'gender': _$GenderEnumMap[instance.gender]!,
      'interested_in': _$GenderEnumMap[instance.interestedIn],
      'about': instance.description,
      'lat': instance.lat,
      'lon': instance.lon,
      'notification_token': instance.notificationsToken,
    };

const _$GenderEnumMap = {
  Gender.female: 'FEMALE',
  Gender.male: 'MALE',
  Gender.other: 'OTHERS',
};
