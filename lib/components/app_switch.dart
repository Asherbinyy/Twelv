import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';

class AppSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const AppSwitch({this.value = true, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Wrap(children: <Widget>[
      if (Platform.isIOS)
        CupertinoSwitch(
          value: value,
          onChanged: onChanged,
          activeColor: context.theme.accentSecondaryColor,
          trackColor: context.theme.switchTrackColor,
        )
      else
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: context.theme.accentSecondaryColor,
          inactiveTrackColor: context.theme.switchTrackColor,
        ),
    ]);
  }
}
