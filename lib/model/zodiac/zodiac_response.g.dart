// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zodiac_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZodiacResponse _$ZodiacResponseFromJson(Map<String, dynamic> json) {
  return ZodiacResponse(
    sun: json['sun'] == null
        ? null
        : Zodiac.fromJson(json['sun'] as Map<String, dynamic>),
    ascendant: json['asc'] == null
        ? null
        : Zodiac.fromJson(json['asc'] as Map<String, dynamic>),
    text: json['text'] as String?,
  );
}

Map<String, dynamic> _$ZodiacResponseToJson(ZodiacResponse instance) =>
    <String, dynamic>{
      'sun': instance.sun,
      'asc': instance.ascendant,
      'text': instance.text,
    };
