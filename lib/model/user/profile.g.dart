// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
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
    superliked: json['superliked'] as bool? ?? false,
    distance: (json['distance'] as num?)?.toDouble(),
    compatibility: json['compatibility'] == null
        ? null
        : Compatibility.fromJson(json['compatibility'] as Map<String, dynamic>),
  )..placeOfBirth = json['place_of_birth'] as String?;
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
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
      'superliked': instance.superliked,
      'distance': instance.distance,
      'compatibility': instance.compatibility,
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
