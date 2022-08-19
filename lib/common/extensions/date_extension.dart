// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';

extension TimeOfDayConverter on TimeOfDay {
  DateTime toDateTime({required DateTime onDate}) =>
      DateTime(onDate.year, onDate.month, onDate.day, hour, minute);
}

extension DateTimeExtension on DateTime {
  int get yearsTillNow => (DateTime.now().difference(this).inDays / 365.25).floor();

  TimeOfDay get timeOfDay => TimeOfDay(hour: hour, minute: minute);

  static DateTime? combine(DateTime? date, TimeOfDay? timeOfDay, {DateTime? defaultDate}) {
    if (date == null && timeOfDay == null) {
      return defaultDate;
    } else if (timeOfDay == null) {
      return date;
    }
    return DateTime(date!.year, date.month, date.day, timeOfDay.hour, timeOfDay.minute);
  }
}
