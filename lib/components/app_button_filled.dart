import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';

import 'app_text.dart';

class AppButtonFilled extends StatelessWidget {
  final String title;
  final AppButtonType type;
  final Widget? iconLeft;
  final Color? color;
  final bool enabled;
  final VoidCallback? onPressed;
  final bool fillParent;

  const AppButtonFilled(this.title,
      {this.type = AppButtonType.primary,
      this.iconLeft,
      this.color,
      this.enabled = true,
      this.onPressed,
      this.fillParent = true});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            height: 45,
            color: color ?? type.backgroundColor(context),
            width: fillParent ? double.infinity : null,
            padding: fillParent ? null : const EdgeInsets.symmetric(horizontal: 18),
            child: TextButton(
                onPressed: enabled ? onPressed : null,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: iconLeft == null ? 0 : 40,
                  ),
                  child: AppText(
                    title,
                    lines: 1,
                    type: AppTextType.buttonFilled,
                    color: type.textColor(context),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: iconLeft == null ? 0 : 15),
            child: iconLeft,
          ),
          if (!enabled)
            Positioned.fill(
              child: Container(
                color: context.theme.buttonDisabledOverlayColor,
                height: 45,
              ),
            )
        ],
      ),
    );
  }
}

enum AppButtonType { primary, secondary, error }

extension AppButtonTypeExtension on AppButtonType {
  Color backgroundColor(BuildContext context) {
    switch (this) {
      case AppButtonType.secondary:
        return context.theme.accentSecondaryColor;
      case AppButtonType.error:
        return context.theme.errorLightColor;
      default:
        return context.theme.accentColor;
    }
  }

  Color? textColor(BuildContext context) {
    return this == AppButtonType.error ? context.theme.errorColor : null;
  }
}
