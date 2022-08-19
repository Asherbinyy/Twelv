import 'package:twelv/di/di.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_bloc.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_model.dart';
import 'package:twelv/services/network/api/user_client.dart';

class UserProfileModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => UserProfileModel(di.get<UserRestClient>()))
      ..registerFactory(() => UserProfileBloc(di.get<UserProfileModel>()));
  }
}
