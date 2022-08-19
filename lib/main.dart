import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twelv/blocs/auth/auth_module.dart';
import 'package:twelv/di/att_service_module.dart';
import 'package:twelv/di/chat_module.dart';
import 'package:twelv/di/cookies_module.dart';
import 'package:twelv/di/document_module.dart';
import 'package:twelv/di/explorer_module.dart';
import 'package:twelv/di/gdpr_module.dart';
import 'package:twelv/di/horoscope_module.dart';
import 'package:twelv/di/iap_module.dart';
import 'package:twelv/di/likes_module.dart';
import 'package:twelv/di/location_module.dart';
import 'package:twelv/di/onboarding_module.dart';
import 'package:twelv/di/places_textfield_module.dart';
import 'package:twelv/di/premium_error_module.dart';
import 'package:twelv/di/pricing_module.dart';
import 'package:twelv/di/profile_module.dart';
import 'package:twelv/di/settings_notifications_module.dart';
import 'package:twelv/di/settings_privacy_module.dart';
import 'package:twelv/di/user_profile_module.dart';
import 'package:twelv/screens/login/login_module.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/network/app_http_overrides.dart';
import 'package:twelv/services/network/network_module.dart';

import 'application/app.dart';
import 'di/app_module.dart';
import 'di/di.dart';

void mainDelegate() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    const <DeviceOrientation>[DeviceOrientation.portraitUp],
  );
  DependenciesContainer().installModules(<Module>[
    AppModule(),
    NetworkModule(),
    AuthModule(),
    LoginModule(),
    PlacesTextFieldModule(),
    OnboardingModule(),
    ProfileModule(),
    ExplorerModule(),
    GdprModule(),
    LikesModule(),
    HoroscopeModule(),
    ChatModule(),
    SettingsNotificationsModule(),
    SettingsPrivacyModule(),
    DocumentModule(),
    CookiesModule(),
    PricingModule(),
    UserProfileModule(),
    PremiumErrorModule(),
    ATTServiceModule(),
    IAPModule(),
    LocationModule(),
  ]).then((_) => _runAppAndCatchExceptions());
}

void _runAppAndCatchExceptions() {
  final FlutterExceptionHandler? originalErrorHandler = FlutterError.onError;
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    originalErrorHandler?.call(errorDetails);
    DependenciesContainer().get<ErrorTracker>().recordFlutterError(errorDetails);
  };

  HttpOverrides.global = AppHttpOverrides();

  runZonedGuarded(() {
    runApp(App());
  }, (Object error, StackTrace stack) {
    logger().e('An error occurred in zone guarded', error, stack);
    DependenciesContainer().get<ErrorTracker>().recordError(error, stack);
  });
}
