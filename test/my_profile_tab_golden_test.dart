import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';
import 'package:twelv/screens/profile/profile_my_view.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';

import 'test_widgets_utils.dart';

void main() {
  group('My Profile Tab', () {
    setUpAll(() {
      DependenciesContainer()
          .registerLazySingleton<FormatterService>(() => FormatterService(DateFormatter()));
    });

    tearDownAll(() {
      DependenciesContainer().unregisterAll();
    });

    testGoldens('Check the screen on different screen sizes', (WidgetTester tester) async {
      final CurrentUser currentUser = CurrentUser(
        id: 1,
        name: 'User name',
        dateTimeOfBirth: DateTime.utc(1980),
        sunSign: ZodiacSign.belier,
        astrologicalSign: ZodiacSign.lion,
        isPremium: false,
        spotlight: false,
        isVisible: true,
      );

      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: <Device>[
          Device.phone,
          Device.phone.copyWith(size: Device.phone.size * 2, name: 'medium'),
          Device.phone.copyWith(size: Device.phone.size * 3, name: 'large'),
        ])
        ..addScenario(
          name: 'default view',
          widget: testApp(
              (_) => CurrentUserWidget(currentUser: currentUser, child: const ProfileMyView())),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'my_profile_tab_view', autoHeight: true);
    });

    testGoldens('Check end subscription date', (WidgetTester tester) async {
      //given
      final CurrentUser currentUser = CurrentUser(
        id: 1,
        name: 'User name',
        dateTimeOfBirth: DateTime.utc(1980),
        sunSign: ZodiacSign.belier,
        astrologicalSign: ZodiacSign.lion,
        isPremium: true,
        subscriptionEndsAt: DateTime(2022, 1, 13),
        spotlight: false,
        isVisible: true,
      );

      //when
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: <Device>[
          Device.phone,
          Device.phone.copyWith(size: Device.phone.size * 2, name: 'medium'),
          Device.phone.copyWith(size: Device.phone.size * 3, name: 'large'),
        ])
        ..addScenario(
          name: 'default view',
          widget: testApp(
              (_) => CurrentUserWidget(currentUser: currentUser, child: const ProfileMyView())),
        );
      await tester.pumpDeviceBuilder(builder);

      //then
      await screenMatchesGolden(tester, 'my_profile_tab_view_premium_subscription',
          autoHeight: true);
    });
  });
}
