// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';

void manageLoadingView(BuildContext context, {required bool show}) {
  if (show) {
    showLoadingView(context);
  } else {
    hideLoadingView(context);
  }
}

void showLoadingView(BuildContext context) => showDialog(
    barrierDismissible: false,
    useSafeArea: false,
    context: context,
    routeSettings: const RouteSettings(name: "LoadingView"),
    builder: (BuildContext dialogContext) => _loadingDialogView(context));

void hideLoadingView(BuildContext context) => Navigator.of(context, rootNavigator: true).popUntil(
      (Route<dynamic> route) => route.settings.name != "LoadingView",
    );

Widget _loadingDialogView(BuildContext context) => SafeArea(
        child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          width: 125,
          height: 125,
          child: Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: Stack(alignment: Alignment.center, children: <Widget>[
                const CircularProgressIndicator(
                  strokeWidth: 7,
                  value: 1,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xfff1eef1)),
                ),
                CircularProgressIndicator(
                  strokeWidth: 7,
                  valueColor: AlwaysStoppedAnimation<Color>(context.theme.accentColor),
                ),
              ]),
            ),
          ),
        ),
      ),
    ));
