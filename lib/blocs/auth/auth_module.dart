import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_model.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/blocs/auth/authorization/access_token_repository.dart';
import 'package:twelv/blocs/auth/authorization/authorization_bloc.dart';
import 'package:twelv/blocs/auth/authorization/authorization_model.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/analytics/app_install_tracker.dart';
import 'package:twelv/services/analytics/short_analytics_tracker.dart';
import 'package:twelv/services/authentication/authentication_service.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/firebase/firebase_messaging.dart';
import 'package:twelv/services/network/api/authorization_client.dart';
import 'package:twelv/services/network/api/user_client.dart';
import 'package:twelv/strings.dart';
import 'package:twelv/utils/crypto_utils.dart';

class AuthModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    // region authorization
    di
      ..registerLazySingleton(() => AccessTokenRepository())
      ..registerLazySingleton(() => CurrentUserRepository())
      ..registerLazySingleton<AuthorizationBloc>(
          () => AuthorizationBloc(di.get<AuthorizationModel>(), di.get<AuthenticationBloc>()))
      ..registerLazySingleton(
          () => AuthorizationRestClient(di.get<Dio>(), baseUrl: di.get<Environment>().apiBaseUrl))
      ..registerLazySingleton<AuthorizationModel>(() => AuthorizationModel(
          di.get<AccessTokenRepository>(),
          di.get<AuthorizationRestClient>(),
          di.get<UserRestClient>(),
          di.get<CurrentUserRepository>(),
          di.get<ErrorTracker>(),
          di.get<AnalyticsTracker>(),
          di.get<FirebaseMessagingService>()));

    // endregion

    // region authentication
    di
      ..registerLazySingleton(
          () => AuthenticationBloc(di.get<AuthenticationModel>(), di.get<ShortAnalyticsTracker>()))
      ..registerLazySingleton<AuthenticationModel>(() => AuthenticationModel(
          FirebaseAuth.instance..setLanguageCode(supportedLocales.first.languageCode),
          FacebookAuth.instance,
          CryptoUtils(),
          di.get<AppInstallTracker>()))
      ..registerLazySingleton<AuthenticationService>(() => di.get<AuthenticationModel>());
    // endregion
  }
}
