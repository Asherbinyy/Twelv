import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_html/shims/dart_ui.dart';
import 'package:twelv/common/components/dialog/options_dialog_view.dart';
import 'package:twelv/generated/l10n.dart';

void showInfoDialog(BuildContext context, String title, String content,
        {String? okButtonTitle, VoidCallback? okPressed}) =>
    showOptionsDialog(context, title, content, <ActionDialogData>[
      ActionDialogData(okButtonTitle ?? Str.of(context).commonOk, okPressed),
    ]);
