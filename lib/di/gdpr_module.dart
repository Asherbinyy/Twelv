import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_bloc.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_model.dart';
import 'package:twelv/services/network/api/document_client.dart';
import 'package:twelv/services/network/api/user_client.dart';

class GdprModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => GdprModel(
          userRestClient: di.get<UserRestClient>(),
          currentUserRepository: di.get<CurrentUserRepository>(),
          documentClient: di.get<DocumentClient>()))
      ..registerFactory(() => GdprBloc(di.get<GdprModel>()));
  }
}
