import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/components/app_container_input.dart';

import 'app_text_field_plain.dart';

class AppTextFieldWithIcon extends StatelessWidget {
  final String text;
  final String? hint;
  final ImageProvider? leftIcon;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const AppTextFieldWithIcon({
    this.text = '',
    this.hint,
    this.leftIcon,
    this.onChanged,
    this.controller,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return AppInputContainer(
      child: Row(
        children: <Widget>[
          if (leftIcon != null)
            Padding(padding: const EdgeInsets.only(left: 15), child: Image(image: leftIcon!))
          else
            const SizedBox(width: 15),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, right: 15),
                child: AppTextFieldPlain(
                  text: text,
                  hint: hint,
                  onChanged: onChanged,
                  controller: controller,
                  focusNode: focusNode,
                )),
          )
        ],
      ),
    );
  }
}
