import 'package:flutter/material.dart';

import 'app_text.dart';

class AppButtonText extends StatelessWidget {
  final String title;
  final AppTextType? type;
  final VoidCallback? onPressed;
  final Color? color;
  final Widget? icon;

  const AppButtonText(this.title, {this.type, this.onPressed, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    final AppText text = AppText(
      title,
      type: type ?? AppTextType.buttonText,
      color: color,
    );
    return icon == null
        ? TextButton(
            onPressed: onPressed,
            child: text,
          )
        : TextButton.icon(onPressed: onPressed, icon: icon!, label: text);
  }
}
