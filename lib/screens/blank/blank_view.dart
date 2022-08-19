import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_text.dart';

class BlankView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.primaryColor,
      child: const Center(
        child: AppText(
          "Blank screen",
          type: AppTextType.body1,
        ),
      ),
    );
  }
}
