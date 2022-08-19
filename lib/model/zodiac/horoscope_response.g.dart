// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horoscope_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HoroscopeResponse _$HoroscopeResponseFromJson(Map<String, dynamic> json) {
  return HoroscopeResponse(
    horoscope: json['horoscope'] == null
        ? null
        : Horoscope.fromJson(json['horoscope'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HoroscopeResponseToJson(HoroscopeResponse instance) =>
    <String, dynamic>{
      'horoscope': instance.horoscope,
    };
