import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_bloc.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_model.dart';
import 'package:twelv/services/firebase/firebase_messaging.dart';
import 'package:twelv/services/network/api/user_client.dart';

class SettingsNotificationsModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => SettingsNotificationsModel(
          userRestClient: di.get<UserRestClient>(),
          firebaseMessagingService: di.get<FirebaseMessagingService>(),
          currentUserRepository: di.get<CurrentUserRepository>(),
          chatClient: di.get<StreamChatClient>()))
      ..registerFactory(() => SettingsNotificationsBloc(
            model: di.get<SettingsNotificationsModel>(),
          ));
  }
}
