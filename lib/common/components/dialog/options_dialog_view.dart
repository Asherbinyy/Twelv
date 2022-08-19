import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showOptionsDialog(
    BuildContext context, String title, String content, List<ActionDialogData> actions,
    {bool closeOnSelected = true}) {
  if (Platform.isAndroid) {
    showDialog(
        context: context,
        builder: (BuildContext dialogContext) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: actions
                .map((ActionDialogData actionDialogView) => ElevatedButton(
                    onPressed: () {
                      if (closeOnSelected) {
                        Navigator.pop(dialogContext);
                      }
                      actionDialogView.onPressed?.call();
                    },
                    child: Text(actionDialogView.title)))
                .toList()));
  } else if (Platform.isIOS) {
    showDialog(
        context: context,
        builder: (BuildContext dialogContext) => CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: actions
                .map((ActionDialogData actionDialogView) => CupertinoDialogAction(
                    onPressed: () {
                      if (closeOnSelected) {
                        Navigator.pop(dialogContext);
                      }
                      actionDialogView.onPressed?.call();
                    },
                    child: Text(actionDialogView.title)))
                .toList()));
  }
}

class ActionDialogData {
  final String title;
  final VoidCallback? onPressed;

  ActionDialogData(this.title, this.onPressed);
}
