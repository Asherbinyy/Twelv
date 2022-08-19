import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/services/errors/http_error_resolver.dart';

class ErrorResolverService {
  HttpErrorResolver http;

  ErrorResolverService(this.http);

  String resolve(BuildContext context, {required Exception? error}) {
    if (error is DioError) {
      return http.resolve(context, error: error);
    } else if (error is StreamChatError) {
      return Str.of(context).errorChatGenericMessage;
    }
    return Str.of(context).errorGeneric;
  }
}
