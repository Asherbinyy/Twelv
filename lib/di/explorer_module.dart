import 'package:dio/dio.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_model.dart';
import 'package:twelv/screens/explorer/bloc/recommendations_filter_repository.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/network/users_client.dart';

class ExplorerModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    final RecommendationsFilterRepository recommendationsFilterRepository =
        RecommendationsFilterRepository();
    await recommendationsFilterRepository.init();

    di
      ..registerFactory(
          () => UsersRestClient(di.get<Dio>(), baseUrl: di.get<Environment>().apiBaseUrl))
      ..registerSingleton(recommendationsFilterRepository)
      ..registerFactory(() => ExplorerModel(
            usersRestClient: di.get<UsersRestClient>(),
            recommendationsFilterRepository: di.get<RecommendationsFilterRepository>(),
            currentUserRepository: di.get<CurrentUserRepository>(),
          ))
      ..registerFactory(() => ExplorerBloc(di.get<ExplorerModel>(), di.get<AnalyticsTracker>()));
  }
}
