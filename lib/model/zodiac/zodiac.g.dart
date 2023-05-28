// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zodiac.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Zodiac _$ZodiacFromJson(Map<String, dynamic> json) => Zodiac(
      signId: json['signId'] as int?,
      sign: $enumDecodeNullable(_$ZodiacSignEnumMap, json['Sign']),
    );

Map<String, dynamic> _$ZodiacToJson(Zodiac instance) => <String, dynamic>{
      'signId': instance.signId,
      'Sign': _$ZodiacSignEnumMap[instance.sign],
    };

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
