import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_bloc.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_model.dart';
import 'package:twelv/services/analytics/att_service.dart';
import 'package:twelv/services/network/api/user_client.dart';

class SettingsPrivacyModule extends Module {
  @override
  Future<dynamic> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => SettingsPrivacyModel(
            di.get<UserRestClient>(),
            di.get<CurrentUserRepository>(),
            di.get<ATTService>(),
          ))
      ..registerFactory(() => SettingsPrivacyBloc(
            di.get<SettingsPrivacyModel>(),
          ));
  }
}
