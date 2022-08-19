import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/zodiac/horoscope.dart';
import 'package:twelv/model/zodiac/horoscope_response.dart';

part 'horoscope_state.freezed.dart';

@freezed
@immutable
abstract class HoroscopeState with _$HoroscopeState {
  const factory HoroscopeState.initial() = Initial;

  const factory HoroscopeState.loading() = Loading;

  const factory HoroscopeState.error(Exception error) = Error;

  const factory HoroscopeState.succeeded(Horoscope? horoscope) = Succeeded;
}
