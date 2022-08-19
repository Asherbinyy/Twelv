import 'package:dio/dio.dart';

extension RequestOptionUtils on RequestOptions {
  void addAuthorizationBearer({required String token}) =>
      headers.addAll(<String, String>{'Authorization': "Bearer $token"});
}
