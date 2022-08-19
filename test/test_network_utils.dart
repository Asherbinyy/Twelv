import 'package:dio/dio.dart';

class UnauthorizedDioError extends DioError {
  UnauthorizedDioError({String path = ''})
      : super(
            requestOptions: RequestOptions(path: path),
            response: _UnauthorizedResponse(path: path));
}

class _UnauthorizedResponse extends Response<dynamic> {
  _UnauthorizedResponse({String path = ''})
      : super(requestOptions: RequestOptions(path: path), statusCode: 401);
}

class OkResponse extends Response<dynamic> {
  OkResponse({String path = ''})
      : super(requestOptions: RequestOptions(path: path), statusCode: 200);
}
