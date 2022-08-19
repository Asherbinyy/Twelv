import 'package:dio/dio.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_model.dart';
import 'package:twelv/blocs/auth/authorization/access_token_repository.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/services/network/api/api_client.dart';
import 'package:twelv/services/network/api/authorization_client.dart';
import 'package:twelv/services/network/api/interceptors/auth_interceptor.dart';

class NetworkModule extends Module {
  @override
  Future<dynamic> installDependencies(DependenciesContainer di) async {
    final Environment environment = di.get<Environment>();

    // region interceptors
    di
      ..registerLazySingleton(() => LogInterceptor(
          request: environment.canLogHttp,
          requestHeader: environment.canLogHttp,
          requestBody: environment.canLogHttp,
          responseHeader: environment.canLogHttp,
          responseBody: environment.canLogHttp,
          error: environment.canLogHttp)) // ignore: no-equal-arguments
      ..registerLazySingleton(() {
        final Dio simpleDio = Dio()..interceptors.add(di.get<LogInterceptor>());
        return AuthInterceptor(di.get<AuthenticationBloc>(), di.get<AccessTokenRepository>(),
            AuthorizationRestClient(simpleDio, baseUrl: environment.apiBaseUrl), simpleDio)
          ..observeAuthState(di.get<AuthenticationModel>().authenticationStateStream);
      });

    // endregion

    // region REST
    di
      ..registerLazySingleton(() {
        final Dio dio = Dio()
          ..interceptors.addAll(<Interceptor>[di.get<LogInterceptor>(), di.get<AuthInterceptor>()]);
        return dio;
      })
      ..registerLazySingleton(() => RestClient(di.get<Dio>(), baseUrl: environment.apiBaseUrl));

    // endregion

    return;
  }
}
