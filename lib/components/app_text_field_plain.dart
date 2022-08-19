import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twelv/assets/theme/app_theme.dart';

class AppTextFieldPlain extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final String? hint;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final TextInputType inputType;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final TextInputAction? action;
  final ValueChanged<String>? onSubmitted;
  final TextCapitalization textCapitalization;

  List<TextInputFormatter>? get _inputFormatters => <TextInputFormatter>[
        if (inputType == TextInputType.number) FilteringTextInputFormatter.allow(RegExp('[0-9]')),
        if (maxLength != null && maxLength! > 0) LengthLimitingTextInputFormatter(maxLength)
      ];

  const AppTextFieldPlain({
    this.text = '',
    this.hint,
    this.maxLines = 1,
    this.maxLength,
    this.readOnly = false,
    this.inputType = TextInputType.text,
    this.focusNode,
    this.onChanged,
    this.action,
    this.onSubmitted,
    this.controller,
    this.textCapitalization = TextCapitalization.words,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      keyboardType: inputType,
      maxLines: maxLines,
      controller: controller ?? TextEditingController(text: text),
      textCapitalization: textCapitalization,
      style: context.theme.inputText,
      inputFormatters: _inputFormatters,
      focusNode: focusNode,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        hintText: hint,
      ),
      onChanged: onChanged,
      textInputAction: action,
      onSubmitted: onSubmitted,
    );
  }
}
