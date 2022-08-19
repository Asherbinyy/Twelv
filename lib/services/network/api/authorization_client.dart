import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:twelv/blocs/auth/authorization/models/access_token_response.dart';
import 'package:twelv/blocs/auth/authorization/models/exchange_tokens_request.dart';

part 'authorization_client.g.dart';

@RestApi()
abstract class AuthorizationRestClient {
  factory AuthorizationRestClient(Dio dio, {required String baseUrl}) = _AuthorizationRestClient;

  @POST("/users/login")
  Future<AccessTokenResponse> exchangeAuthToken(
    @Body() ExchangeTokensRequest exchangeTokensRequest,
  );

  @POST("/users/logout")
  Future<void> logout();
}
