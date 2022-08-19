import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:twelv/common/extensions/date_extension.dart';

class DateFormatter {
  String? format(DateTime? date, {required AppDateFormat inFormat}) =>
      date != null ? DateFormat(inFormat.format).format(date) : null;

  String? formatTime(TimeOfDay? time, {required AppDateFormat inFormat}) =>
      format(time?.toDateTime(onDate: DateTime.now()), inFormat: inFormat);
}

enum AppDateFormat { birth, birthTime, birthDateTimeApi, dateApi, subscriptionEndDate }

extension AppDateFormats on AppDateFormat {
  String get format {
    switch (this) {
      case AppDateFormat.birth:
        return "d MMMM yyyy";
      case AppDateFormat.birthTime:
        return "H:mm";
      case AppDateFormat.birthDateTimeApi:
        return "yyyy-MM-dd HH:mm:ss";
      case AppDateFormat.dateApi:
        return "yyyy-MM-dd";
      case AppDateFormat.subscriptionEndDate:
        return "dd-MM-yyyy";
      default:
        throw "Date format not provided!";
    }
  }
}
