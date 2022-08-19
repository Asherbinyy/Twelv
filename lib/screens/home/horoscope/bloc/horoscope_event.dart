import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'horoscope_event.freezed.dart';

@freezed
@immutable
abstract class HoroscopeEvent with _$HoroscopeEvent {
  const factory HoroscopeEvent.getHoroscope() = GetHoroscope;
}
