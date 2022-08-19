import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/user/compatibility.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';
import 'package:twelv/screens/explorer/components/profile_card_container.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';

import 'test_widgets_utils.dart';

OnScenarioCreate scrollDown({required double offset, required WidgetTester tester}) =>
    (Key scenarioWidgetKey) async {
      final finder = find.descendant(
          of: find.byKey(scenarioWidgetKey), matching: find.byType(CustomScrollView));
      expect(finder, findsOneWidget);
      await tester.drag(finder, Offset(0.0, offset));
    };

Compatibility mockFullCompatibility() => Compatibility(100, 100, 'complementarityText', 50,
    'sexualityText', 50, 'solidityText', 50, 'complicityText', 50, 'feelingsText');

Compatibility mockLimitedCompatibility() => Compatibility.fromJson({
      'mainScore': 10,
      'complementarityScore': 50,
      'complementarityText': 'complementarityText',
      'solidityScore': 50,
      'solidityText': 'solidityText',
    });

Profile mockCommonProfile({Compatibility? compatibility, bool isSuperlike = false}) => Profile(
    id: 1,
    name: 'Profile Name',
    dateTimeOfBirth: DateTime.utc(1990, 1, 1),
    sunSign: ZodiacSign.balance,
    astrologicalSign: ZodiacSign.capricorne,
    zodiacText: 'zodiacText',
    interestedIn: Gender.male,
    gender: Gender.female,
    about: 'About Profile',
    superliked: isSuperlike,
    distance: 100,
    compatibility: compatibility);

Profile mockProfileOfDayProfile({Compatibility? compatibility, bool isSuperlike = false}) {
  final Profile profile = Profile(
      id: 1,
      name: 'Profile Of Day',
      dateTimeOfBirth: DateTime.utc(1992, 1, 2),
      sunSign: ZodiacSign.balance,
      astrologicalSign: ZodiacSign.capricorne,
      zodiacText: 'zodiacText - 2',
      interestedIn: Gender.male,
      gender: Gender.female,
      about: 'About Profile - info about me',
      superliked: isSuperlike,
      distance: 120,
      compatibility: compatibility);
  profile.isProfileOfDay = true;
  return profile;
}

CurrentUser mockCommonCurrentUser() => CurrentUser(
    id: 1,
    name: 'Current User Name',
    dateTimeOfBirth: DateTime.utc(1990, 1, 1),
    sunSign: ZodiacSign.gemeaux,
    astrologicalSign: ZodiacSign.poissons,
    zodiacText: 'zodiacText',
    interestedIn: Gender.male,
    gender: Gender.female,
    about: 'About Current User',
    isPremium: false,
    spotlight: false,
    isVisible: true);

void main() {
  final devices = <Device>[
    Device.phone,
    Device.phone
        .copyWith(size: Size(Device.phone.size.width, Device.phone.size.height * 2), name: 'long')
  ];

  group('Profile Card for profiles', () {
    testGoldens('Check profile card for profile', (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: devices)
        ..addScenario(
            name: 'full - regular',
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromProfile(
                    mockCommonProfile(compatibility: mockFullCompatibility(), isSuperlike: false),
                    allowRotate: (_) {},
                    likePercentage: 0),
              ),
            ))
        ..addScenario(
            name: 'full - superlike',
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromProfile(
                    mockCommonProfile(compatibility: mockFullCompatibility(), isSuperlike: true),
                    allowRotate: (_) {},
                    likePercentage: 0),
              ),
            ));

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'profile_card_view', autoHeight: true);
    });

    testGoldens('Check scrolled profile card for profile', (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: devices)
        ..addScenario(
            name: 'full - regular - scrolled',
            onCreate: scrollDown(offset: -400, tester: tester),
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromProfile(
                    mockCommonProfile(compatibility: mockFullCompatibility(), isSuperlike: false),
                    allowRotate: (_) {},
                    likePercentage: 0),
              ),
            ))
        ..addScenario(
            name: 'limited compatibility - regular - scrolled',
            onCreate: scrollDown(offset: -400, tester: tester),
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromProfile(
                    mockCommonProfile(
                        compatibility: mockLimitedCompatibility(), isSuperlike: false),
                    allowRotate: (_) {},
                    likePercentage: 0),
              ),
            ))
        ..addScenario(
            name: 'full - superlike - scrolled',
            onCreate: scrollDown(offset: -400, tester: tester),
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromProfile(
                    mockCommonProfile(compatibility: mockFullCompatibility(), isSuperlike: true),
                    allowRotate: (_) {},
                    likePercentage: 0),
              ),
            ));

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'profile_card_view_scrolled', autoHeight: true);
    });
  });

  group('Profile Card for current user', () {
    testGoldens('Check profile card for current user', (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: devices)
        ..addScenario(
            name: 'regular',
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromCurrentUser(mockCommonCurrentUser()),
              ),
            ));

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'current_user_card_view', autoHeight: true);
    });

    testGoldens('Check scrolled profile card for current user', (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: devices)
        ..addScenario(
            name: 'scrolled',
            onCreate: scrollDown(offset: -400, tester: tester),
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromCurrentUser(mockCommonCurrentUser()),
              ),
            ));

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'current_user_card_view_scrolled', autoHeight: true);
    });
  });

  group('Profile Card for Profile of Day user', () {
    testGoldens('Check profile card for Profile of Day profile', (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: devices)
        ..addScenario(
            name: 'regular',
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromProfile(mockProfileOfDayProfile(),
                    allowRotate: (_) {}, likePercentage: 0),
              ),
            ));

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'profile_of_day_card_view', autoHeight: true);
    });

    testGoldens('Check scrolled profile card for Profile of Day profile',
        (WidgetTester tester) async {
      final DeviceBuilder builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: devices)
        ..addScenario(
            name: 'scrolled',
            onCreate: scrollDown(offset: -400, tester: tester),
            widget: testApp(
              (_) => ProfileCardContainer(
                child: ProfileCardContentView.fromProfile(mockProfileOfDayProfile(),
                    allowRotate: (_) {}, likePercentage: 0),
              ),
            ));

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'profile_of_day_card_view_scrolled', autoHeight: true);
    });
  });
}
