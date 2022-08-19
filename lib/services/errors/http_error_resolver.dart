import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:twelv/generated/l10n.dart';

class HttpErrorResolver {
  String resolve(BuildContext context, {required DioError? error}) {
    if (error?.error is SocketException) {
      return Str.of(context).errorNoInternetConnection;
    }
    switch (error?.response?.statusCode) {
      case HttpErrorCode.validation:
        return Str.of(context).errorHttpValidation;
      default:
        return Str.of(context).errorHttpGeneric;
    }
  }
}

class HttpErrorCode {
  static const int validation = 422;
}
