import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';

import 'app_text.dart';

class AppButtonFilledSmall extends StatelessWidget {
  final String title;
  final ImageProvider? iconLeft;
  final VoidCallback? onPressed;

  const AppButtonFilledSmall(this.title, {this.iconLeft, this.onPressed});

  @override
  Widget build(BuildContext context) {
    const double height = 35;
    return ClipRRect(
      borderRadius: BorderRadius.circular(height),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            height: height,
            color: context.theme.accentSecondaryColor,
            child: TextButton(
                onPressed: onPressed,
                child: Padding(
                  padding: EdgeInsets.only(left: iconLeft == null ? 5 : 25, right: 5),
                  child: AppText(
                    title,
                    lines: 1,
                    type: AppTextType.buttonSmall,
                  ),
                )),
          ),
          if (iconLeft != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Image(
                height: height,
                image: iconLeft!,
              ),
            ),
        ],
      ),
    );
  }
}
