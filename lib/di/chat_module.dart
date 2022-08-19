import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/blocs/auth/authorization/authorization_bloc.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
import 'package:twelv/screens/home/chat/bloc/chat_model.dart';
import 'package:twelv/services/e2ee/e2ee_service.dart';
import 'package:twelv/services/e2ee/e2ee_service_proxy.dart';
import 'package:twelv/services/network/users_client.dart';

class ChatModule extends Module {
  @override
  Future<dynamic> installDependencies(DependenciesContainer di) async {
    await _installGetStreamDependencies(di);
    await _installGeneralChatDependencies(di);
  }

  Future<void> _installGetStreamDependencies(DependenciesContainer di) async {
    final Environment env = di.get();
    di.registerLazySingleton<StreamChatClient>(() => StreamChatClient(
          env.chatApiKey,
          location: Location.euWest,
          logLevel: env.chatLogLevel,
        ));
    di.registerLazySingleton<E2eeService>(() => E2eeServiceTweaksProxy(E2eeService()));
  }

  Future<void> _installGeneralChatDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => ChatModel(di.get<StreamChatClient>(), di.get<CurrentUserRepository>(),
          di.get<UsersRestClient>(), di.get<E2eeService>()))
      ..registerFactory(() => ChatBloc(di.get<ChatModel>(), di.get<AuthorizationBloc>()));
  }
}
