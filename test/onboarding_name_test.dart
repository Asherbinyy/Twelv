import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';
import 'package:twelv/screens/onboarding/name/onboarding_name_view.dart';
import 'package:twelv/services/navigation/navigation.dart';
import 'package:twelv/services/validators/name_validator.dart';
import 'package:twelv/services/validators/validation.dart';

import 'onboarding_name_test.mocks.dart';
import 'test_blocs_utils.dart';
import 'test_widgets_utils.dart';

class MockOnboardingBloc extends MockBloc<OnboardingEvent, OnboardingState>
    implements OnboardingBloc {}

// generate by running flutter pub run build_runner build (probably with --delete-conflicting-outputs flag)
@GenerateMocks(<Type>[],
    customMocks: <MockSpec<dynamic>>[MockSpec<NavigationService>(returnNullOnMissingStub: true)])
void main() {
  setUpAll(() {

    // mocktail.registerFallbackValue<OnboardingState>(OnboardingState());
    mocktail.registerFallbackValue(OnboardingState());
    mocktail.registerFallbackValue(OnboardingEvent.nameEntered(name: ''));
  });

  group('OnboardingNameView', () {
    late OnboardingBloc bloc;
    late NavigationService navigationService;

    setUp(() {
      // bloc and other dependencies
      bloc = MockOnboardingBloc();
      DependenciesContainer().registerSingleton(ValidationService(NameValidator()));

      // navigation
      navigationService = MockNavigationService();
      when((navigationService as MockNavigationService).navigateTo(any, args: anyNamed('args')))
          .thenAnswer((_) async => '');
      DependenciesContainer()
        ..registerSingleton<NavigationService>(navigationService, NavigationService.onboarding)
        ..registerSingleton<NavigationService>(navigationService, NavigationService.root);
    });

    tearDown(() {
      DependenciesContainer().unregisterAll();
    });

    testWidgets('Continue button is disabled by default', (WidgetTester tester) async {
      // given the empty name
      const String emptyName = '';
      mockBlocState(bloc, OnboardingState(name: emptyName));
      final Widget app = testApp(
          (_) => OnboardingNameView(
                settings: OnboardingNameViewSettings(isEdit: false),
              ),
          bloc: bloc);
      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      // when tap on continue button
      await tester.tap(find.byType(AppButtonFilled));
      await tester.pumpAndSettle();

      // then nothing happens
      verifyNever(
          (navigationService as MockNavigationService).navigateTo(any, args: anyNamed('args')));
      expect(find.byType(OnboardingNameView), findsOneWidget);
    });

    testWidgets('Continue button is enabled after entering a valid name',
        (WidgetTester tester) async {
      // given the valid name
      const String validName = 'Mark';
      mockBlocState(bloc, OnboardingState(name: validName));
      final Widget app = testApp(
          (_) => OnboardingNameView(
                settings: OnboardingNameViewSettings(isEdit: false),
              ),
          bloc: bloc);
      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      // when tap on continue button
      await tester.tap(find.byType(AppButtonFilled));
      await tester.pumpAndSettle();

      // then onboarding tries to navigate to the next step
      verify((navigationService as MockNavigationService).navigateTo(any, args: anyNamed('args')))
          .called(1);
    });
  });
}
