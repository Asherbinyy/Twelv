// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) {
  return CurrentUser(
    id: json['id'] as int,
    name: json['name'] as String?,
    dateTimeOfBirth: json['datetime_of_birth'] == null
        ? null
        : DateTime.parse(json['datetime_of_birth'] as String),
    sunSign: _$enumDecodeNullable(_$ZodiacSignEnumMap, json['sun_sign']),
    astrologicalSign:
        _$enumDecodeNullable(_$ZodiacSignEnumMap, json['astrological_sign']),
    zodiacText: json['zodiac_text'] as String?,
    interestedIn: _$enumDecodeNullable(_$GenderEnumMap, json['interested_in']),
    gender: _$enumDecodeNullable(_$GenderEnumMap, json['gender']),
    about: json['about'] as String?,
    images: (json['images'] as List<dynamic>?)
            ?.map((e) => ImageDto.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    blurred: (json['blurred'] as List<dynamic>?)
            ?.map((e) => ImageDto.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    isPremium: json['is_premium'] as bool? ?? false,
    spotlight: json['spotlight'] as bool? ?? false,
    isVisible: json['is_visible'] as bool? ?? true,
    notificationToken: json['notification_token'] as String?,
    notificationSettings: json['notificationSettings'] == null
        ? null
        : NotificationSettings.fromJson(
            json['notificationSettings'] as Map<String, dynamic>),
    getStreamUUID: json['get_stream_UUID'] as String?,
    getStreamAPIToken: json['get_stream_API_Token'] as String?,
    virgilApiToken: json['virgil_API_Token'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    isOnboarded: json['is_onboarded'] as bool?,
    consentTermsOfUse: json['consent_terms_of_use'] as bool?,
    consentTermsOfUseTimestamp: json['consent_terms_of_use_timestamp'] == null
        ? null
        : DateTime.parse(json['consent_terms_of_use_timestamp'] as String),
    consentSensitiveData: json['consent_sensitive_data'] as bool?,
    consentFirebaseAnalytics: json['consent_firebase_analytics'] as bool?,
    consentFirebaseCrashlytics: json['consent_firebase_crashlytics'] as bool?,
    consentFirebaseTimestamp: json['consent_firebase_timestamp'] == null
        ? null
        : DateTime.parse(json['consent_firebase_timestamp'] as String),
    subscriptionEndsAt: json['subscription_ends_at'] == null
        ? null
        : DateTime.parse(json['subscription_ends_at'] as String),
    birthLocationLat: (json['birth_location_lat'] as num?)?.toDouble(),
    birthLocationLon: (json['birth_location_lon'] as num?)?.toDouble(),
    credits: json['credits'] as int,
  )..placeOfBirth = json['place_of_birth'] as String?;
}

Map<String, dynamic> _$CurrentUserToJson(CurrentUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'datetime_of_birth': instance.dateTimeOfBirth?.toIso8601String(),
      'place_of_birth': instance.placeOfBirth,
      'sun_sign': _$ZodiacSignEnumMap[instance.sunSign],
      'astrological_sign': _$ZodiacSignEnumMap[instance.astrologicalSign],
      'zodiac_text': instance.zodiacText,
      'interested_in': _$GenderEnumMap[instance.interestedIn],
      'gender': _$GenderEnumMap[instance.gender],
      'about': instance.about,
      'images': instance.images,
      'blurred': instance.blurred,
      'is_premium': instance.isPremium,
      'spotlight': instance.spotlight,
      'is_visible': instance.isVisible,
      'notification_token': instance.notificationToken,
      'notificationSettings': instance.notificationSettings,
      'get_stream_UUID': instance.getStreamUUID,
      'get_stream_API_Token': instance.getStreamAPIToken,
      'virgil_API_Token': instance.virgilApiToken,
      'lat': instance.lat,
      'lon': instance.lon,
      'is_onboarded': instance.isOnboarded,
      'consent_terms_of_use': instance.consentTermsOfUse,
      'consent_terms_of_use_timestamp':
          instance.consentTermsOfUseTimestamp?.toIso8601String(),
      'consent_sensitive_data': instance.consentSensitiveData,
      'consent_firebase_analytics': instance.consentFirebaseAnalytics,
      'consent_firebase_crashlytics': instance.consentFirebaseCrashlytics,
      'consent_firebase_timestamp':
          instance.consentFirebaseTimestamp?.toIso8601String(),
      'subscription_ends_at': instance.subscriptionEndsAt?.toIso8601String(),
      'birth_location_lat': instance.birthLocationLat,
      'birth_location_lon': instance.birthLocationLon,
      'credits': instance.credits,
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

const _$ZodiacSignEnumMap = {
  ZodiacSign.belier: 'belier',
  ZodiacSign.taureau: 'taureau',
  ZodiacSign.gemeaux: 'gemeaux',
  ZodiacSign.cancer: 'cancer',
  ZodiacSign.lion: 'lion',
  ZodiacSign.vierge: 'vierge',
  ZodiacSign.balance: 'balance',
  ZodiacSign.scorpion: 'scorpion',
  ZodiacSign.sagittaire: 'sagittaire',
  ZodiacSign.capricorne: 'capricorne',
  ZodiacSign.verseau: 'verseau',
  ZodiacSign.poissons: 'poissons',
};

const _$GenderEnumMap = {
  Gender.female: 'FEMALE',
  Gender.male: 'MALE',
  Gender.other: 'OTHERS',
};
