// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';

class NoAccessButtonFieldView extends StatelessWidget {
  final double? price;
  final String message;
  final String buttonTitle;
  final Color mainColor;
  final VoidCallback? onPressed;

  const NoAccessButtonFieldView({
    required this.price,
    required this.message,
    required this.buttonTitle,
    required this.mainColor,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          color: mainColor.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppText(
                "$message ${price?.toStringAsFixed(2) ?? "..."} €",
                type: AppTextType.body1,
                color: mainColor,
              ),
              padded(
                  AppButtonFilled(
                    buttonTitle,
                    color: mainColor,
                    onPressed: onPressed,
                  ),
                  top: 10)
            ],
          ),
        ),
      );
}
