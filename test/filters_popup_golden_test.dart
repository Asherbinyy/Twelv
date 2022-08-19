import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';
import 'package:twelv/screens/explorer/components/filters_popup.dart';

import 'test_widgets_utils.dart';

void main() {
  group('Filters Popup View', () {
    testGoldens('Check the screen on both platforms. Check Slider padding',
        (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: <Device>[
          Device.phone,
          Device.phone.copyWith(size: const Size(500, 1100), name: 'medium')
        ])
        ..addScenario(
          name: 'ios',
          widget: testApp(
              (_) => FiltersPopup(
                  recommendationsFilters:
                      RecommendationsFilters(ageMin: 24, ageMax: 34, distance: 43)),
              platform: TargetPlatform.iOS),
        )
        ..addScenario(
          name: 'android',
          widget: testApp(
              (_) => FiltersPopup(
                  recommendationsFilters:
                      RecommendationsFilters(ageMin: 24, ageMax: 34, distance: 43)),
              platform: TargetPlatform.android),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'filters_popup_view', autoHeight: true);
    });
  });
}
