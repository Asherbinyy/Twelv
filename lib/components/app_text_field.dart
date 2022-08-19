import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/components/app_text_field_plain.dart';

import 'app_container_input.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final String? hint;
  final int? maxLines;
  final int? maxLength;
  final TextInputAction? action;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType inputType;
  final TextCapitalization textCapitalization;

  const AppTextField({
    this.text = '',
    this.controller,
    this.hint,
    this.maxLines,
    this.maxLength,
    this.onChanged,
    this.onSubmitted,
    this.action,
    this.inputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.words,
  });

  @override
  Widget build(BuildContext context) {
    return AppInputContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: AppTextFieldPlain(
          text: text,
          hint: hint,
          maxLines: maxLines,
          maxLength: maxLength,
          action: action,
          controller: controller,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          inputType: inputType,
          textCapitalization: textCapitalization,
        ),
      ),
    );
  }
}
