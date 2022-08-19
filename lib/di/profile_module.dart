import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_model.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/formatters/formatters.dart';
import 'package:twelv/services/network/api/user_client.dart';

class ProfileModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => ProfileModel(
          di.get<UserRestClient>(),
          di.get<CurrentUserRepository>(),
          di.get<FormatterService>(),
          di.get<ErrorTracker>(),
          di.get<AnalyticsTracker>()))
      ..registerFactory(() => ProfileBloc(di.get<ProfileModel>(), di.get<AuthenticationBloc>()));
  }
}
