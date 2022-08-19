import 'package:dio/dio.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/blocs/auth/authorization/access_token_repository.dart';
import 'package:twelv/blocs/auth/authorization/models/access_token_response.dart';
import 'package:twelv/blocs/auth/authorization/models/exchange_tokens_request.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/services/authentication/authentication_service.dart';
import 'package:twelv/services/network/api/authorization_client.dart';
import 'package:twelv/services/network/network_utils.dart';

class AuthInterceptor extends Interceptor {
  final AccessTokenRepository _accessTokenRepository;
  final AuthorizationRestClient _authorizationRestClient;
  final AuthenticationBloc _authenticationBloc;
  final Dio _dio;
  String? _refreshToken;

  AuthInterceptor(this._authenticationBloc, this._accessTokenRepository,
      this._authorizationRestClient, this._dio);

  // region Interceptor

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_accessTokenRepository.isSessionActive) {
      options.addAuthorizationBearer(token: _accessTokenRepository.accessToken!);
    }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    if (response.data is Map<String, dynamic> &&
        (response.data as Map<String, dynamic>).containsKey("access_token")) {
      final String accessToken = (response.data as Map<String, dynamic>)["access_token"] as String;
      logger().d("Access token $accessToken intercepted from response ${response.realUri}");
      _accessTokenRepository.accessToken = accessToken;
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError originalError, ErrorInterceptorHandler handler) {
    if (originalError.response?.statusCode == 401) {
      if (_refreshToken == null) {
        return _riseCriticalUnauthorizedIfNeeded(forError: originalError, handler: handler);
      }
      _getNewAccessToken(refreshToken: _refreshToken!).then((AccessTokenResponse response) {
        _accessTokenRepository.accessToken = response.accessToken;
        _repeat(
            failedRequest: originalError.requestOptions,
            handler: handler,
            newAccessToken: response.accessToken);
      }).onError((DioError error, _) {
        _riseCriticalUnauthorizedIfNeeded(forError: error, handler: handler);
      });
    } else {
      return super.onError(originalError, handler);
    }
  }

  // endregion

  // region token refreshing

  void observeAuthState(Stream<AuthenticationServiceState> authStream) => authStream
      .where((AuthenticationServiceState event) => event is AuthenticationServiceStateTokenReceived)
      .listen((AuthenticationServiceState event) =>
          _refreshToken = (event as AuthenticationServiceStateTokenReceived).authToken);

  void _riseCriticalUnauthorizedIfNeeded(
      {required DioError forError, required ErrorInterceptorHandler handler}) {
    if (forError.response?.statusCode == 401) {
      logger().e("Cannot refresh the token, user is about to be logged out.");
      _authenticationBloc.add(const AuthenticationEvent.signOut());
    }
    handler.reject(forError);
  }

  Future<AccessTokenResponse> _getNewAccessToken({required String refreshToken}) =>
      _authorizationRestClient
          .exchangeAuthToken(ExchangeTokensRequest(authenticationToken: refreshToken));

  void _repeat(
          {required RequestOptions failedRequest,
          required ErrorInterceptorHandler handler,
          required String newAccessToken}) =>
      _dio
          .fetch(failedRequest..addAuthorizationBearer(token: newAccessToken))
          .then((Response<dynamic> response) => handler.resolve(response))
          .onError((DioError error, _) =>
              _riseCriticalUnauthorizedIfNeeded(forError: error, handler: handler));

// endregion
}
