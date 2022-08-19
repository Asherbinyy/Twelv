import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/zodiac/horoscope.dart';

part 'horoscope_response.g.dart';

@JsonSerializable()
class HoroscopeResponse {
  final Horoscope? horoscope;

  HoroscopeResponse({this.horoscope});

  factory HoroscopeResponse.fromJson(Map<String, dynamic> json) =>
      _$HoroscopeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HoroscopeResponseToJson(this);
}
