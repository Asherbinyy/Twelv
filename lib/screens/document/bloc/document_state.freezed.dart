// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'document_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DocumentStateTearOff {
  const _$DocumentStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  ApiError apiError(Exception error) {
    return ApiError(
      error,
    );
  }

  Document document(HtmlDocumentContent documentContent) {
    return Document(
      documentContent,
    );
  }
}

/// @nodoc
const $DocumentState = _$DocumentStateTearOff();

/// @nodoc
mixin _$DocumentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(HtmlDocumentContent documentContent) document,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(HtmlDocumentContent documentContent)? document,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Document value) document,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Document value)? document,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  final DocumentState _value;
  // ignore: unused_field
  final $Res Function(DocumentState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$DocumentStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'DocumentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(HtmlDocumentContent documentContent) document,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(HtmlDocumentContent documentContent)? document,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Document value) document,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Document value)? document,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DocumentState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$DocumentStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'DocumentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(HtmlDocumentContent documentContent) document,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(HtmlDocumentContent documentContent)? document,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Document value) document,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Document value)? document,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DocumentState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> extends _$DocumentStateCopyWithImpl<$Res>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(ApiError _value, $Res Function(ApiError) _then)
      : super(_value, (v) => _then(v as ApiError));

  @override
  ApiError get _value => super._value as ApiError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ApiError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc
class _$ApiError implements ApiError {
  const _$ApiError(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'DocumentState.apiError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ApiErrorCopyWith<ApiError> get copyWith =>
      _$ApiErrorCopyWithImpl<ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(HtmlDocumentContent documentContent) document,
  }) {
    return apiError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(HtmlDocumentContent documentContent)? document,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Document value) document,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Document value)? document,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements DocumentState {
  const factory ApiError(Exception error) = _$ApiError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res>;
  $Res call({HtmlDocumentContent documentContent});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res> extends _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(Document _value, $Res Function(Document) _then)
      : super(_value, (v) => _then(v as Document));

  @override
  Document get _value => super._value as Document;

  @override
  $Res call({
    Object? documentContent = freezed,
  }) {
    return _then(Document(
      documentContent == freezed
          ? _value.documentContent
          : documentContent // ignore: cast_nullable_to_non_nullable
              as HtmlDocumentContent,
    ));
  }
}

/// @nodoc
class _$Document implements Document {
  const _$Document(this.documentContent);

  @override
  final HtmlDocumentContent documentContent;

  @override
  String toString() {
    return 'DocumentState.document(documentContent: $documentContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Document &&
            (identical(other.documentContent, documentContent) ||
                const DeepCollectionEquality()
                    .equals(other.documentContent, documentContent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(documentContent);

  @JsonKey(ignore: true)
  @override
  $DocumentCopyWith<Document> get copyWith =>
      _$DocumentCopyWithImpl<Document>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(HtmlDocumentContent documentContent) document,
  }) {
    return document(documentContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(HtmlDocumentContent documentContent)? document,
    required TResult orElse(),
  }) {
    if (document != null) {
      return document(documentContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Document value) document,
  }) {
    return document(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Document value)? document,
    required TResult orElse(),
  }) {
    if (document != null) {
      return document(this);
    }
    return orElse();
  }
}

abstract class Document implements DocumentState {
  const factory Document(HtmlDocumentContent documentContent) = _$Document;

  HtmlDocumentContent get documentContent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}
