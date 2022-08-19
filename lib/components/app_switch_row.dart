// ignore_for_file: no-magic-number
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_switch.dart';

class AppSwitchRow extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool>? onChanged;
  final double height;
  final double separatorHeight;
  final double indentationSize;
  final int indentationLevel;
  final TextStyle? textStyle;

  const AppSwitchRow(
      {required this.title,
      required this.isOn,
      this.onChanged,
      this.height = 60,
      this.separatorHeight = 0.5,
      this.indentationSize = 10,
      this.indentationLevel = 0,
      this.textStyle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(left: indentationSize * indentationLevel),
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints(minHeight: height - separatorHeight),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        title,
                        style: textStyle ??
                            context.theme.textTheme.bodyText2!
                                .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Center(
                      child: AppSwitch(
                        value: isOn,
                        onChanged: (bool newValue) => onChanged?.call(newValue),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: separatorHeight,
              color: const Color(0xffd8d8d8),
            )
          ],
        ),
      );
}
