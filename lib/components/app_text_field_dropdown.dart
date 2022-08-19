import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_container_input.dart';

import 'app_text_field_plain.dart';

class AppTextFieldDropdown extends StatelessWidget {
  final String text;
  final String? hint;
  final Icon? iconLeft;
  final GestureTapCallback? onTap;

  const AppTextFieldDropdown({this.text = '', this.hint, this.iconLeft, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        AppInputContainer(
          child: Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: iconLeft == null ? 10 : 15), child: iconLeft),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: AppTextFieldPlain(text: text, hint: hint, readOnly: true)),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.keyboard_arrow_down_rounded,
                      color: context.theme.accentSecondaryLightColor))
            ],
          ),
        ),
        SizedBox(height: 60, child: GestureDetector(onTap: onTap))
      ],
    );
  }
}
