// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_onboarding_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinishOnboardingRequest _$FinishOnboardingRequestFromJson(
    Map<String, dynamic> json) {
  return FinishOnboardingRequest(
    gender: _$enumDecode(_$GenderEnumMap, json['gender']),
    interestedIn: _$enumDecodeNullable(_$GenderEnumMap, json['interested_in']),
    lat: (json['lat'] as num).toDouble(),
    lon: (json['lon'] as num).toDouble(),
    description: json['about'] as String?,
    notificationsToken: json['notification_token'] as String?,
    isOnboarded: json['is_onboarded'] as int? ?? 1,
  );
}

Map<String, dynamic> _$FinishOnboardingRequestToJson(
        FinishOnboardingRequest instance) =>
    <String, dynamic>{
      'is_onboarded': instance.isOnboarded,
      'gender': _$GenderEnumMap[instance.gender],
      'interested_in': _$GenderEnumMap[instance.interestedIn],
      'about': instance.description,
      'lat': instance.lat,
      'lon': instance.lon,
      'notification_token': instance.notificationsToken,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$GenderEnumMap = {
  Gender.female: 'FEMALE',
  Gender.male: 'MALE',
  Gender.other: 'OTHERS',
};

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}
