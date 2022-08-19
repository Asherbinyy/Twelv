import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:twelv/components/app_radio_button.dart';

void main() {
  group('Radio Buttons', () {
    testGoldens('Checked and unchecked radio buttons', (WidgetTester tester) async {
      await tester.pumpWidgetBuilder(
        Center(
            child: (GoldenBuilder.column()
                  ..addScenario(
                      'checked',
                      AppRadioButton(<String>["Option 1", "Option 2", "Option 3"],
                          selectedValue: "Option 1"))
                  ..addScenario(
                      'unchecked', AppRadioButton(<String>["Option 1", "Option 2", "Option 3"])))
                .build()),
      );
      await screenMatchesGolden(tester, 'radio_buttons', autoHeight: true);
    });
  });
}
