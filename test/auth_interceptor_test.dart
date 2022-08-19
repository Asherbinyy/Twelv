import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/blocs/auth/authorization/access_token_repository.dart';
import 'package:twelv/blocs/auth/authorization/models/access_token_response.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/services/authentication/authentication_service.dart';
import 'package:twelv/services/network/api/authorization_client.dart';
import 'package:twelv/services/network/api/interceptors/auth_interceptor.dart';

import 'auth_interceptor_test.mocks.dart';
import 'test_network_utils.dart';

@GenerateMocks(<Type>[], customMocks: <MockSpec<dynamic>>[
  MockSpec<ErrorInterceptorHandler>(returnNullOnMissingStub: true),
  MockSpec<AuthenticationBloc>(returnNullOnMissingStub: true),
  MockSpec<AuthorizationRestClient>(returnNullOnMissingStub: true),
  MockSpec<Dio>(returnNullOnMissingStub: true),
])
void main() {
  late MockAuthenticationBloc authBloc;
  late MockAuthorizationRestClient authClient;
  late MockDio dio;
  late AuthInterceptor authInterceptor;
  late MockErrorInterceptorHandler handler;
  late DioError unauthorized;

  const AuthenticationEvent signedOutEvent = AuthenticationEvent.signOut();
  const AuthenticationServiceState newRefreshTokenEvent =
      AuthenticationServiceState.authTokenReceived('refresh-token');
  final AccessTokenResponse newAccessTokenResponse =
      AccessTokenResponse(accessToken: "new-access-token", isOnboarded: true);
  late Stream<AuthenticationServiceState> refreshTokenStream;

  setUp(() {
    authBloc = MockAuthenticationBloc();
    authClient = MockAuthorizationRestClient();
    dio = MockDio();
    authInterceptor = AuthInterceptor(authBloc, AccessTokenRepository(), authClient, dio);
    handler = MockErrorInterceptorHandler();
    unauthorized = UnauthorizedDioError();
    refreshTokenStream = Stream<AuthenticationServiceState>.value(newRefreshTokenEvent);
    DependenciesContainer().registerLazySingleton<Logger>(() => Logger(level: Level.nothing));
  });

  tearDown(() {
    DependenciesContainer().unregisterAll();
  });

  group('AuthInterceptor', () {
    group('Token Refreshing', () {
      test(
          'interceptor should try to restore session when there is a refresh token and 401 has occurred',
          () async {
        // given
        when(authClient.exchangeAuthToken(any)).thenAnswer((_) async => newAccessTokenResponse);
        when(dio.fetch(any)).thenAnswer((_) async => OkResponse());

        // when interceptor with refresh token gets 401
        authInterceptor.observeAuthState(refreshTokenStream);
        await Future<void>.delayed(const Duration(milliseconds: 5));
        authInterceptor.onError(unauthorized, handler);
        await Future<void>.delayed(const Duration(milliseconds: 100));

        // then the original request is resolved silently
        verify(handler.resolve(any)).called(1);
        verifyNever(handler.reject(any));
        verifyNever(authBloc.add(any));
      });

      test('interceptor should rise signed out even if there is no refresh token', () async {
        // given
        const Stream<AuthenticationServiceState> emptyRefreshTokenStream =
            Stream<AuthenticationServiceState>.empty();

        // when interceptor without refresh token gets 401
        authInterceptor.observeAuthState(emptyRefreshTokenStream);
        await Future<void>.delayed(const Duration(milliseconds: 5));
        authInterceptor.onError(unauthorized, handler);
        await Future<void>.delayed(const Duration(milliseconds: 100));

        // then the original request is rejected and never resolved
        verify(handler.reject(any)).called(1);
        verify(authBloc.add(signedOutEvent)).called(1);
        verifyNever(handler.resolve(any));
      });

      test('interceptor should rise signed out when second attempt has returned 401 again',
          () async {
        // given
        when(authClient.exchangeAuthToken(any)).thenAnswer((_) async => newAccessTokenResponse);
        when(dio.fetch(any)).thenAnswer((_) async => throw unauthorized);

        // when interceptor without refresh token gets 401
        authInterceptor.observeAuthState(refreshTokenStream);
        await Future<void>.delayed(const Duration(milliseconds: 5));
        authInterceptor.onError(unauthorized, handler);
        await Future<void>.delayed(const Duration(milliseconds: 100));

        // then the original request is rejected and never resolved
        verify(handler.reject(any)).called(1);
        verify(authBloc.add(signedOutEvent)).called(1);
        verifyNever(handler.resolve(any));
      });

      test('interceptor should rise signed out when refresh token cannot be exchanged', () async {
        // given
        when(authClient.exchangeAuthToken(any)).thenAnswer((_) async => throw unauthorized);
        when(dio.fetch(any)).thenAnswer((_) async => throw unauthorized);

        // when interceptor without refresh token gets 401
        authInterceptor.observeAuthState(refreshTokenStream);
        await Future<void>.delayed(const Duration(milliseconds: 5));
        authInterceptor.onError(unauthorized, handler);
        await Future<void>.delayed(const Duration(milliseconds: 100));

        // then the original request is rejected and never resolved
        verify(handler.reject(any)).called(1);
        verify(authBloc.add(signedOutEvent)).called(1);
        verifyNever(handler.resolve(any));
      });
    });
  });
}
