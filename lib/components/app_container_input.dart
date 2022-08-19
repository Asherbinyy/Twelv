import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';

class AppInputContainer extends StatelessWidget {
  final Widget? child;

  const AppInputContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: context.theme.accentSecondaryLightColor)),
      child: child,
    );
  }
}
