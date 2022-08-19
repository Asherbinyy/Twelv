import 'package:twelv/di/di.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_model.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/network/users_client.dart';

class LikesModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => LikesModel(di.get<UsersRestClient>()))
      ..registerFactory(() => LikesBloc(di.get<LikesModel>(), di.get<AnalyticsTracker>()));
  }
}
