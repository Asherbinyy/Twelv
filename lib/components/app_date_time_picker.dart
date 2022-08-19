import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/common/extensions/date_extension.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';

Future<void> showAppDatePicker(
  BuildContext context, {
  required DateTime firstDate,
  required DateTime lastDate,
  required DateTime initialDate,
  required Function(DateTime) onDatePicked,
}) async {
  if (Platform.isIOS) {
    DateTime datePicked = initialDate;
    await showCupertinoModalPopup(
        context: context,
        builder: (_) => Wrap(children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  color: context.theme.primaryColor,
                  height: 350,
                  child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: initialDate,
                      minimumDate: firstDate,
                      maximumDate: lastDate,
                      onDateTimeChanged: (DateTime date) => datePicked = date),
                ),
                _cupertinoModalOKActionButton(context, onPressed: () {
                  onDatePicked(datePicked);
                  Navigator.of(context, rootNavigator: true).pop();
                })
              ])
            ]));
  } else {
    final DateTime? date = await showDatePicker(
        context: context, initialDate: initialDate, firstDate: firstDate, lastDate: lastDate);
    if (date != null) onDatePicked(date);
  }
}

Future<void> showAppTimePicker(
  BuildContext context, {
  required TimeOfDay initialTime,
  required Function(TimeOfDay) onTimePicked,
}) async {
  if (Platform.isIOS) {
    TimeOfDay timePicked = initialTime;
    await showCupertinoModalPopup(
        context: context,
        builder: (_) => Wrap(children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  height: 350,
                  color: context.theme.primaryColor,
                  child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      use24hFormat: true,
                      initialDateTime: initialTime.toDateTime(onDate: DateTime.now()),
                      onDateTimeChanged: (DateTime date) =>
                          timePicked = TimeOfDay.fromDateTime(date)),
                ),
                _cupertinoModalOKActionButton(context, onPressed: () {
                  onTimePicked(timePicked);
                  Navigator.of(context, rootNavigator: true).pop();
                })
              ])
            ]));
  } else {
    final TimeOfDay? time = await showTimePicker(context: context, initialTime: initialTime);
    if (time != null) onTimePicked(time);
  }
}

Widget _cupertinoModalOKActionButton(BuildContext context,
        {required VoidCallback? onPressed}) =>
    Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: AppButtonText(Str.of(context).commonOk,
                type: AppTextType.input, onPressed: onPressed)));
