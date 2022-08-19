import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:twelv/screens/onboarding/tutorial/onboarding_tutorial.dart';
import 'package:twelv/screens/onboarding/tutorial/onboarding_tutorial_view.dart';

import 'test_widgets_utils.dart';

void main() {
  group('Onboarding Tutorial View', () {
    testGoldens('Check the screen on both platforms', (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: <Device>[
          Device.phone,
          Device.phone.copyWith(size: Device.phone.size * 2, name: 'medium'),
          Device.phone.copyWith(size: Device.phone.size * 3, name: 'large'),
        ])
        ..addScenario(
          name: 'ios',
          widget: testApp(
              (_) => OnboardingTutorialView(
                  pageConfig: OnboardingTutorialScreenConfig(step: OnboardingTutorial.screen1)),
              platform: TargetPlatform.iOS),
        )
        ..addScenario(
          name: 'android',
          widget: testApp(
              (_) => OnboardingTutorialView(
                  pageConfig: OnboardingTutorialScreenConfig(step: OnboardingTutorial.screen1)),
              platform: TargetPlatform.android),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'onboarding_tutorial_view', autoHeight: true);
    });
  });
}
