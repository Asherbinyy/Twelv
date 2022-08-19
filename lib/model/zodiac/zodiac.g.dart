// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zodiac.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Zodiac _$ZodiacFromJson(Map<String, dynamic> json) {
  return Zodiac(
    signId: json['signId'] as int?,
    sign: _$enumDecodeNullable(_$ZodiacSignEnumMap, json['Sign']),
  );
}

Map<String, dynamic> _$ZodiacToJson(Zodiac instance) => <String, dynamic>{
      'signId': instance.signId,
      'Sign': _$ZodiacSignEnumMap[instance.sign],
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
