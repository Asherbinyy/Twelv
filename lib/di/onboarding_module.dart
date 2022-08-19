import 'package:dio/dio.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/screens/onboarding/birthdata/bloc/onboarding_birth_data_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_model.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_bloc.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_model.dart';
import 'package:twelv/screens/onboarding/zodiac/bloc/onboarding_zodiac_bloc.dart';
import 'package:twelv/services/firebase/firebase_messaging.dart';
import 'package:twelv/services/formatters/formatters.dart';
import 'package:twelv/services/network/api/user_client.dart';

class OnboardingModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerLazySingleton(
          () => UserRestClient(di.get<Dio>(), baseUrl: di.get<Environment>().apiBaseUrl))
      ..registerFactory<OnboardingModel>(
        () => OnboardingModel(di.get<UserRestClient>(), di.get<CurrentUserRepository>()),
      )
      ..registerFactory<OnboardingBloc>(
        () => OnboardingBloc(di.get<OnboardingModel>()),
      )
      ..registerFactory<OnboardingBirthDataBloc>(
        () => OnboardingBirthDataBloc(di.get<FormatterService>()),
      )
      ..registerFactory<OnboardingZodiacBloc>(
        () => OnboardingZodiacBloc(),
      )
      ..registerFactory(() => OnboardingNotificationsModel(di.get<FirebaseMessagingService>()))
      ..registerFactory<OnboardingNotificationsBloc>(
          () => OnboardingNotificationsBloc(di.get<OnboardingNotificationsModel>()));
  }
}
