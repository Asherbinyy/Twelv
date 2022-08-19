import 'package:twelv/di/di.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_bloc.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_model.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/network/api/user_client.dart';

class CookiesModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => CookiesModel(
            di.get<UserRestClient>(),
            di.get<AnalyticsTracker>(),
            di.get<ErrorTracker>(),
          ))
      ..registerFactory(() => CookiesBloc(di.get<CookiesModel>()));
  }
}
