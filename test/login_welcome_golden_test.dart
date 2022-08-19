import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:twelv/screens/login/welcome/login_welcome_view.dart';

import 'test_widgets_utils.dart';

void main() {
  group('Login Welcome View', () {
    testGoldens('Check the screen on both platforms', (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: <Device>[
          Device.phone,
          Device.phone.copyWith(size: const Size(500, 1100), name: 'medium')
        ])
        ..addScenario(
          name: 'ios',
          widget: testApp((_) => const LoginWelcomeView(phoneNumberPrefixes: <String>["+48"]),
              platform: TargetPlatform.iOS),
        )
        ..addScenario(
          name: 'android',
          widget: testApp((_) => const LoginWelcomeView(phoneNumberPrefixes: <String>["+48"]),
              platform: TargetPlatform.android),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'login_welcome_view', autoHeight: true);
    });
  });
}
