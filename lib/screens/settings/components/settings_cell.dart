import 'package:flutter/material.dart';
import 'package:twelv/components/app_switch.dart';
import 'package:twelv/components/app_text.dart';

class SettingsCell extends StatefulWidget {
  final bool checked;

  const SettingsCell({this.checked = true});

  @override
  State<StatefulWidget> createState() => _SettingsCellState(checked: checked);
}

class _SettingsCellState extends State<SettingsCell> {
  bool checked;

  _SettingsCellState({required this.checked});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Expanded(
              child: AppText(
                "Settings",
                type: AppTextType.settings,
              ),
            ),
            AppSwitch(
              value: checked,
              onChanged: (bool checked) {
                setState(() {
                  this.checked = checked;
                });
              },
            )
          ],
        ),
        const Divider()
      ],
    );
  }
}
