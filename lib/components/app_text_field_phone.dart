import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_container_input.dart';
import 'package:twelv/components/app_text.dart';

import 'app_text_field_plain.dart';

class AppTextFieldPhone extends StatefulWidget {
  final List<String> prefixes;
  final String? selectedValue;
  final String text;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;
  final TextEditingController? controller;

  const AppTextFieldPhone(this.prefixes,
      {Key? key,
      this.selectedValue,
      this.text = '',
      this.hint,
      this.onChanged,
      this.onSubmitted,
      this.focusNode,
      this.controller})
      : super(key: key);

  @override
  _AppTextFieldPhoneState createState() =>
      _AppTextFieldPhoneState(prefixes, selectedValue: selectedValue);
}

class _AppTextFieldPhoneState extends State<AppTextFieldPhone> {
  final List<String> values;
  String? selectedValue;

  _AppTextFieldPhoneState(this.values, {this.selectedValue});

  @override
  Widget build(BuildContext context) {
    return AppInputContainer(
      child: Row(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(Icons.keyboard_arrow_down_rounded,
                          color: context.theme.accentSecondaryLightColor)),
                  value: selectedValue,
                  items: values.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: AppText(
                        value,
                        type: AppTextType.input,
                        lines: 1,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() => selectedValue = value);
                  },
                ),
              )),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, right: 15),
                child: AppTextFieldPlain(
                  text: widget.text,
                  hint: widget.hint,
                  inputType: TextInputType.number,
                  action: Platform.isIOS ? TextInputAction.continueAction : TextInputAction.go,
                  onChanged: (String phone) => widget.onChanged?.call("$selectedValue$phone"),
                  onSubmitted: (String phone) => widget.onSubmitted?.call("$selectedValue$phone"),
                  focusNode: widget.focusNode,
                  controller: widget.controller,
                )),
          )
        ],
      ),
    );
  }
}
