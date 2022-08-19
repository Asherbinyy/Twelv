// Mocks generated by Mockito 5.0.7 from annotations
// in twelv/test/auth_interceptor_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:bloc/src/bloc.dart' as _i14;
import 'package:bloc/src/transition.dart' as _i13;
import 'package:dio/src/adapter.dart' as _i7;
import 'package:dio/src/cancel_token.dart' as _i18;
import 'package:dio/src/dio.dart' as _i17;
import 'package:dio/src/dio_error.dart' as _i10;
import 'package:dio/src/interceptor.dart' as _i2;
import 'package:dio/src/options.dart' as _i6;
import 'package:dio/src/response.dart' as _i9;
import 'package:dio/src/transformer.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart'
    as _i11;
import 'package:twelv/blocs/auth/authentication/authentication_event.dart'
    as _i12;
import 'package:twelv/blocs/auth/authentication/authentication_state.dart'
    as _i3;
import 'package:twelv/blocs/auth/authorization/models/access_token_response.dart'
    as _i5;
import 'package:twelv/blocs/auth/authorization/models/exchange_tokens_request.dart'
    as _i16;
import 'package:twelv/services/network/api/authorization_client.dart' as _i15;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: prefer_const_constructors

// ignore_for_file: avoid_redundant_argument_values

class _FakeInterceptorState<T> extends _i1.Fake
    implements _i2.InterceptorState<T> {}

class _FakeAuthenticationState extends _i1.Fake
    implements _i3.AuthenticationState {}

class _FakeStreamSubscription<T> extends _i1.Fake
    implements _i4.StreamSubscription<T> {}

class _FakeAccessTokenResponse extends _i1.Fake
    implements _i5.AccessTokenResponse {}

class _FakeBaseOptions extends _i1.Fake implements _i6.BaseOptions {}

class _FakeHttpClientAdapter extends _i1.Fake implements _i7.HttpClientAdapter {
}

class _FakeTransformer extends _i1.Fake implements _i8.Transformer {}

class _FakeInterceptors extends _i1.Fake implements _i2.Interceptors {}

class _FakeResponse<T> extends _i1.Fake implements _i9.Response<T> {}

/// A class which mocks [ErrorInterceptorHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockErrorInterceptorHandler extends _i1.Mock
    implements _i2.ErrorInterceptorHandler {
  @override
  _i4.Future<_i2.InterceptorState<dynamic>> get future =>
      (super.noSuchMethod(Invocation.getter(#future),
              returnValue: Future<_i2.InterceptorState<dynamic>>.value(
                  _FakeInterceptorState<dynamic>()))
          as _i4.Future<_i2.InterceptorState<dynamic>>);
  @override
  bool get isCompleted =>
      (super.noSuchMethod(Invocation.getter(#isCompleted), returnValue: false)
          as bool);
  @override
  void next(_i10.DioError? err) =>
      super.noSuchMethod(Invocation.method(#next, [err]),
          returnValueForMissingStub: null);
  @override
  void resolve(_i9.Response<dynamic>? response) =>
      super.noSuchMethod(Invocation.method(#resolve, [response]),
          returnValueForMissingStub: null);
  @override
  void reject(_i10.DioError? error) =>
      super.noSuchMethod(Invocation.method(#reject, [error]),
          returnValueForMissingStub: null);
}

/// A class which mocks [AuthenticationBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationBloc extends _i1.Mock
    implements _i11.AuthenticationBloc {
  @override
  _i3.AuthenticationState get state =>
      (super.noSuchMethod(Invocation.getter(#state),
          returnValue: _FakeAuthenticationState()) as _i3.AuthenticationState);
  @override
  _i4.Stream<_i3.AuthenticationState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i3.AuthenticationState>.empty())
          as _i4.Stream<_i3.AuthenticationState>);
  @override
  _i4.Stream<_i3.AuthenticationState> mapEventToState(
          _i12.AuthenticationEvent? event) =>
      (super.noSuchMethod(Invocation.method(#mapEventToState, [event]),
              returnValue: Stream<_i3.AuthenticationState>.empty())
          as _i4.Stream<_i3.AuthenticationState>);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(null),
      returnValueForMissingStub: Future.value()) as _i4.Future<void>);
  @override
  void add(_i12.AuthenticationEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i12.AuthenticationEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>>
      transformEvents(
              _i4.Stream<_i12.AuthenticationEvent>? events,
              _i14.TransitionFunction<_i12.AuthenticationEvent,
                      _i3.AuthenticationState>?
                  transitionFn) =>
          (super.noSuchMethod(
              Invocation.method(#transformEvents, [events, transitionFn]),
              returnValue:
                  Stream<_i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>>.empty()) as _i4
              .Stream<_i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>>);
  @override
  void emit(_i3.AuthenticationState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>?
              transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>>
      transformTransitions(
              _i4.Stream<_i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>>?
                  transitions) =>
          (super.noSuchMethod(
                  Invocation.method(#transformTransitions, [transitions]),
                  returnValue:
                      Stream<_i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>>.empty())
              as _i4.Stream<
                  _i13.Transition<_i12.AuthenticationEvent, _i3.AuthenticationState>>);
  @override
  _i4.StreamSubscription<_i3.AuthenticationState> listen(
          void Function(_i3.AuthenticationState)? onData,
          {Function? onError,
          void Function()? onDone,
          bool? cancelOnError}) =>
      (super.noSuchMethod(
              Invocation.method(#listen, [
                onData
              ], {
                #onError: onError,
                #onDone: onDone,
                #cancelOnError: cancelOnError
              }),
              returnValue: _FakeStreamSubscription<_i3.AuthenticationState>())
          as _i4.StreamSubscription<_i3.AuthenticationState>);
  @override
  void onChange(_i13.Change<_i3.AuthenticationState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [AuthorizationRestClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthorizationRestClient extends _i1.Mock
    implements _i15.AuthorizationRestClient {
  @override
  _i4.Future<_i5.AccessTokenResponse> exchangeAuthToken(
          _i16.ExchangeTokensRequest? exchangeTokensRequest) =>
      (super.noSuchMethod(
              Invocation.method(#exchangeAuthToken, [exchangeTokensRequest]),
              returnValue: Future<_i5.AccessTokenResponse>.value(
                  _FakeAccessTokenResponse()))
          as _i4.Future<_i5.AccessTokenResponse>);
  @override
  _i4.Future<void> logout() =>
      (super.noSuchMethod(Invocation.method(#logout, []),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i4.Future<void>);
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i17.Dio {
  @override
  _i6.BaseOptions get options =>
      (super.noSuchMethod(Invocation.getter(#options),
          returnValue: _FakeBaseOptions()) as _i6.BaseOptions);
  @override
  set options(_i6.BaseOptions? _options) =>
      super.noSuchMethod(Invocation.setter(#options, _options),
          returnValueForMissingStub: null);
  @override
  _i7.HttpClientAdapter get httpClientAdapter =>
      (super.noSuchMethod(Invocation.getter(#httpClientAdapter),
          returnValue: _FakeHttpClientAdapter()) as _i7.HttpClientAdapter);
  @override
  set httpClientAdapter(_i7.HttpClientAdapter? _httpClientAdapter) => super
      .noSuchMethod(Invocation.setter(#httpClientAdapter, _httpClientAdapter),
          returnValueForMissingStub: null);
  @override
  _i8.Transformer get transformer =>
      (super.noSuchMethod(Invocation.getter(#transformer),
          returnValue: _FakeTransformer()) as _i8.Transformer);
  @override
  set transformer(_i8.Transformer? _transformer) =>
      super.noSuchMethod(Invocation.setter(#transformer, _transformer),
          returnValueForMissingStub: null);
  @override
  _i2.Interceptors get interceptors =>
      (super.noSuchMethod(Invocation.getter(#interceptors),
          returnValue: _FakeInterceptors()) as _i2.Interceptors);
  @override
  void close({bool? force = false}) =>
      super.noSuchMethod(Invocation.method(#close, [], {#force: force}),
          returnValueForMissingStub: null);
  @override
  _i4.Future<_i9.Response<T>> get<T>(String? path,
          {Map<String, dynamic>? queryParameters,
          _i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#get, [
                path
              ], {
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> getUri<T>(Uri? uri,
          {_i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#getUri, [
                uri
              ], {
                #options: options,
                #cancelToken: cancelToken,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> post<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> postUri<T>(Uri? uri,
          {dynamic data,
          _i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#postUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> put<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> putUri<T>(Uri? uri,
          {dynamic data,
          _i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#putUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> head<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i6.Options? options,
          _i18.CancelToken? cancelToken}) =>
      (super.noSuchMethod(
              Invocation.method(#head, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> headUri<T>(Uri? uri,
          {dynamic data,
          _i6.Options? options,
          _i18.CancelToken? cancelToken}) =>
      (super.noSuchMethod(
              Invocation.method(#headUri, [uri],
                  {#data: data, #options: options, #cancelToken: cancelToken}),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> delete<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i6.Options? options,
          _i18.CancelToken? cancelToken}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> deleteUri<T>(Uri? uri,
          {dynamic data,
          _i6.Options? options,
          _i18.CancelToken? cancelToken}) =>
      (super.noSuchMethod(
              Invocation.method(#deleteUri, [uri],
                  {#data: data, #options: options, #cancelToken: cancelToken}),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> patch<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> patchUri<T>(Uri? uri,
          {dynamic data,
          _i6.Options? options,
          _i18.CancelToken? cancelToken,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#patchUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  void lock() => super.noSuchMethod(Invocation.method(#lock, []),
      returnValueForMissingStub: null);
  @override
  void unlock() => super.noSuchMethod(Invocation.method(#unlock, []),
      returnValueForMissingStub: null);
  @override
  void clear() => super.noSuchMethod(Invocation.method(#clear, []),
      returnValueForMissingStub: null);
  @override
  _i4.Future<_i9.Response<dynamic>> download(String? urlPath, dynamic savePath,
          {_i6.ProgressCallback? onReceiveProgress,
          Map<String, dynamic>? queryParameters,
          _i18.CancelToken? cancelToken,
          bool? deleteOnError = true,
          String? lengthHeader = r'content-length',
          dynamic data,
          _i6.Options? options}) =>
      (super.noSuchMethod(
              Invocation.method(#download, [
                urlPath,
                savePath
              ], {
                #onReceiveProgress: onReceiveProgress,
                #queryParameters: queryParameters,
                #cancelToken: cancelToken,
                #deleteOnError: deleteOnError,
                #lengthHeader: lengthHeader,
                #data: data,
                #options: options
              }),
              returnValue:
                  Future<_i9.Response<dynamic>>.value(_FakeResponse<dynamic>()))
          as _i4.Future<_i9.Response<dynamic>>);
  @override
  _i4.Future<_i9.Response<dynamic>> downloadUri(Uri? uri, dynamic savePath,
          {_i6.ProgressCallback? onReceiveProgress,
          _i18.CancelToken? cancelToken,
          bool? deleteOnError = true,
          String? lengthHeader = r'content-length',
          dynamic data,
          _i6.Options? options}) =>
      (super.noSuchMethod(
              Invocation.method(#downloadUri, [
                uri,
                savePath
              ], {
                #onReceiveProgress: onReceiveProgress,
                #cancelToken: cancelToken,
                #deleteOnError: deleteOnError,
                #lengthHeader: lengthHeader,
                #data: data,
                #options: options
              }),
              returnValue:
                  Future<_i9.Response<dynamic>>.value(_FakeResponse<dynamic>()))
          as _i4.Future<_i9.Response<dynamic>>);
  @override
  _i4.Future<_i9.Response<T>> request<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i18.CancelToken? cancelToken,
          _i6.Options? options,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#request, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #cancelToken: cancelToken,
                #options: options,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> requestUri<T>(Uri? uri,
          {dynamic data,
          _i18.CancelToken? cancelToken,
          _i6.Options? options,
          _i6.ProgressCallback? onSendProgress,
          _i6.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
              Invocation.method(#requestUri, [
                uri
              ], {
                #data: data,
                #cancelToken: cancelToken,
                #options: options,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              }),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
  @override
  _i4.Future<_i9.Response<T>> fetch<T>(_i6.RequestOptions? requestOptions) =>
      (super.noSuchMethod(Invocation.method(#fetch, [requestOptions]),
              returnValue: Future<_i9.Response<T>>.value(_FakeResponse<T>()))
          as _i4.Future<_i9.Response<T>>);
}