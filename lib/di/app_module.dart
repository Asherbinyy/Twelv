import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:twelv/application/bloc/init_bloc.dart';
import 'package:twelv/blocs/logger_bloc_observer.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';
import 'package:twelv/services/adjust/adjust_tracker.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/analytics/app_install_tracker.dart';
import 'package:twelv/services/analytics/location_permission_tracker.dart';
import 'package:twelv/services/analytics/short_analytics_tracker.dart';
import 'package:twelv/services/errors/error_resolver.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/errors/http_error_resolver.dart';
import 'package:twelv/services/firebase/firebase_analytics_tracker.dart';
import 'package:twelv/services/firebase/firebase_deeplink_tracker.dart';
import 'package:twelv/services/firebase/firebase_error_tracker.dart';
import 'package:twelv/services/firebase/firebase_messaging.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';
import 'package:twelv/services/iap/flutter_in_app_purchase_service.dart';
import 'package:twelv/services/iap/in_app_purchase_service.dart';
import 'package:twelv/services/navigation/navigation.dart';
import 'package:twelv/services/validators/name_validator.dart';
import 'package:twelv/services/validators/validation.dart';

import 'di.dart';

Logger logger() => DependenciesContainer().get<Logger>();

NavigationService navigator(String route) => DependenciesContainer().get<NavigationService>(route);

class AppModule extends Module {
  @override
  Future<dynamic> installDependencies(DependenciesContainer di) async {
    await _registerUtils(di);
    _registerServices(di);
    _registerBlocs(di);
    _registerNavigation(di);
    _registerValidators(di);
    _registerFormatters(di);
    _registerErrorResolvers(di);
    return;
  }

  Future<void> _registerUtils(DependenciesContainer di) async {
    di.registerLazySingleton<Logger>(() => Logger(
          level: di.get<Environment>().logLevel,
          printer: PrettyPrinter(),
        ));

    Adjust.start(AdjustConfig(
        di.get<Environment>().adjustAppToken, di.get<Environment>().adjustEnvironment));

    final FirebaseErrorTracker fs = FirebaseErrorTracker();
    await fs.init();
    fs.isEnabled = false;

    final FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();
    final FirebaseAnalyticsObserver firebaseAnalyticsObserver =
        FirebaseAnalyticsObserver(analytics: firebaseAnalytics);

    final FirebaseAnalyticsTracker firebaseAnalyticsTracker =
        FirebaseAnalyticsTracker(firebaseAnalytics, firebaseAnalyticsObserver);
    await firebaseAnalyticsTracker.init();
    firebaseAnalyticsTracker.isEnabled = false;

    di.registerSingleton<FirebaseErrorTracker>(fs);
    di.registerSingleton<ErrorTracker>(fs);

    di.registerSingleton<FirebaseAnalyticsTracker>(firebaseAnalyticsTracker);
    di.registerSingleton<AnalyticsTracker>(firebaseAnalyticsTracker);
    di.registerSingleton<ShortAnalyticsTracker>(AdjustTracker());

    di.registerLazySingleton<FirebaseDeeplinkTracker>(() => FirebaseDeeplinkTracker());
    di.registerLazySingleton<FirebaseMessagingService>(() => FirebaseMessagingService());

    FirebaseMessaging.onMessageOpenedApp.listen(
        (RemoteMessage message) => di.get<FirebaseDeeplinkTracker>().onMessageOpenedApp(message));

    final RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      di.get<FirebaseDeeplinkTracker>().onInitialMessage(initialMessage);
    }

    await Hive.initFlutter();
    Hive.registerAdapter(RecommendationsFiltersAdapter());
    final AppInstallTracker appInstallTracker = AppInstallTracker();
    await appInstallTracker.init();
    di.registerSingleton(appInstallTracker);

    final LocationPermissionTracker locationPermissionTracker = LocationPermissionTracker();
    await locationPermissionTracker.init();
    di.registerSingleton(locationPermissionTracker);
  }

  void _registerServices(DependenciesContainer di) {
    di.registerLazySingleton<InAppPurchaseService>(
        () => FlutterInAppPurchaseService(di.get<Environment>()));
  }

  void _registerBlocs(DependenciesContainer di) {
    Bloc.observer = LoggerBlocObserver();
    di.registerFactory<InitBloc>(() => InitBloc());
  }

  void _registerNavigation(DependenciesContainer di) {
    _registerNavigationService(di, NavigationService.root);
    _registerNavigationService(di, NavigationService.home);
    _registerNavigationService(di, NavigationService.login);
    _registerNavigationService(di, NavigationService.onboarding);
  }

  void _registerNavigationService(DependenciesContainer di, String route) =>
      di.registerLazySingleton(() => NavigationService(GlobalKey<NavigatorState>()), route);

  void _registerValidators(DependenciesContainer di) {
    di.registerLazySingleton<ValidationService>(() => ValidationService(NameValidator()));
  }

  void _registerFormatters(DependenciesContainer di) {
    di.registerLazySingleton<FormatterService>(() => FormatterService(DateFormatter()));
  }

  void _registerErrorResolvers(DependenciesContainer di) {
    di.registerLazySingleton<ErrorResolverService>(() => ErrorResolverService(HttpErrorResolver()));
  }
}
