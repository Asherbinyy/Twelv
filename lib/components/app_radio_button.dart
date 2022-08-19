import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_container_input.dart';
import 'package:twelv/components/app_text.dart';

typedef StringCorrection = Future<String?> Function(String?);

class AppRadioButton extends StatefulWidget {
  final List<String> values;
  final String? selectedValue;
  final ValueChanged<String?>? onSelected;
  final bool allowDeselect;
  final StringCorrection correction;

  AppRadioButton(this.values,
      {this.selectedValue,
      this.onSelected,
      this.allowDeselect = false,
      StringCorrection? correction,
      Key? key})
      : this.correction = correction ?? ((String? str) async => str),
        super(key: key);

  @override
  State<StatefulWidget> createState() => _AppRadioButtonState(values, selectedValue: selectedValue);
}

class _AppRadioButtonState extends State<AppRadioButton> {
  final List<String> values;
  String? selectedValue;

  _AppRadioButtonState(this.values, {this.selectedValue});

  @override
  Widget build(BuildContext context) {
    return Column(children: _buildOptions());
  }

  Future<void> _didSelect(String? userSelection) async {
    String? selection;
    if (widget.allowDeselect && selectedValue == userSelection) {
      selection = null;
    } else {
      selection = userSelection;
    }

    final String? corrected = await widget.correction(selection);
    widget.onSelected?.call(corrected);

    setState(() {
      selectedValue = corrected;
    });
  }

  List<Widget> _buildOptions() {
    final List<Widget> widgets = <Widget>[];
    for (int index = 0; index < values.length; index++) {
      widgets.add(
        GestureDetector(
          onTap: () => _didSelect(values[index]),
          child: _elevated(
              AppInputContainer(
                child: Container(
                  color: selectedValue == values[index]
                      ? context.theme.accentSecondaryLightColor
                      : Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      Radio<String>(
                        value: values[index],
                        groupValue: selectedValue,
                        activeColor: Colors.white,
                        onChanged: (String? value) => _didSelect(value),
                      ),
                      Expanded(
                        child: AppText(
                          values[index],
                          type: AppTextType.body1,
                          color: selectedValue == values[index]
                              ? Colors.white
                              : context.theme.textMediumColor,
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              selectedValue == values[index]),
        ),
      );
      if (index != values.length - 1) {
        widgets.add(const SizedBox(height: 10));
      }
    }
    return widgets;
  }

  Widget _elevated(Widget child, bool selected) {
    return selected
        ? Material(
            elevation: 5,
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: child,
          )
        : Container(child: child);
  }
}
