// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cookies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CookiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(UserConsent consent) initial,
    required TResult Function(UserConsent consent) succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(UserConsent consent)? initial,
    TResult? Function(UserConsent consent)? succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(UserConsent consent)? initial,
    TResult Function(UserConsent consent)? succeeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiesStateCopyWith<$Res> {
  factory $CookiesStateCopyWith(
          CookiesState value, $Res Function(CookiesState) then) =
      _$CookiesStateCopyWithImpl<$Res, CookiesState>;
}

/// @nodoc
class _$CookiesStateCopyWithImpl<$Res, $Val extends CookiesState>
    implements $CookiesStateCopyWith<$Res> {
  _$CookiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$CookiesStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CookiesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(UserConsent consent) initial,
    required TResult Function(UserConsent consent) succeeded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(UserConsent consent)? initial,
    TResult? Function(UserConsent consent)? succeeded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(UserConsent consent)? initial,
    TResult Function(UserConsent consent)? succeeded,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CookiesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorCopyWith(
          _$ApiError value, $Res Function(_$ApiError) then) =
      __$$ApiErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ApiErrorCopyWithImpl<$Res>
    extends _$CookiesStateCopyWithImpl<$Res, _$ApiError>
    implements _$$ApiErrorCopyWith<$Res> {
  __$$ApiErrorCopyWithImpl(_$ApiError _value, $Res Function(_$ApiError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ApiError(
      null == error
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
    return 'CookiesState.apiError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      __$$ApiErrorCopyWithImpl<_$ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(UserConsent consent) initial,
    required TResult Function(UserConsent consent) succeeded,
  }) {
    return apiError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(UserConsent consent)? initial,
    TResult? Function(UserConsent consent)? succeeded,
  }) {
    return apiError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(UserConsent consent)? initial,
    TResult Function(UserConsent consent)? succeeded,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements CookiesState {
  const factory ApiError(final Exception error) = _$ApiError;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({UserConsent consent});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CookiesStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consent = null,
  }) {
    return _then(_$Initial(
      null == consent
          ? _value.consent
          : consent // ignore: cast_nullable_to_non_nullable
              as UserConsent,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.consent);

  @override
  final UserConsent consent;

  @override
  String toString() {
    return 'CookiesState.initial(consent: $consent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(UserConsent consent) initial,
    required TResult Function(UserConsent consent) succeeded,
  }) {
    return initial(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(UserConsent consent)? initial,
    TResult? Function(UserConsent consent)? succeeded,
  }) {
    return initial?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(UserConsent consent)? initial,
    TResult Function(UserConsent consent)? succeeded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CookiesState {
  const factory Initial(final UserConsent consent) = _$Initial;

  UserConsent get consent;
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SucceededCopyWith<$Res> {
  factory _$$SucceededCopyWith(
          _$Succeeded value, $Res Function(_$Succeeded) then) =
      __$$SucceededCopyWithImpl<$Res>;
  @useResult
  $Res call({UserConsent consent});
}

/// @nodoc
class __$$SucceededCopyWithImpl<$Res>
    extends _$CookiesStateCopyWithImpl<$Res, _$Succeeded>
    implements _$$SucceededCopyWith<$Res> {
  __$$SucceededCopyWithImpl(
      _$Succeeded _value, $Res Function(_$Succeeded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consent = null,
  }) {
    return _then(_$Succeeded(
      null == consent
          ? _value.consent
          : consent // ignore: cast_nullable_to_non_nullable
              as UserConsent,
    ));
  }
}

/// @nodoc

class _$Succeeded implements Succeeded {
  const _$Succeeded(this.consent);

  @override
  final UserConsent consent;

  @override
  String toString() {
    return 'CookiesState.succeeded(consent: $consent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Succeeded &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceededCopyWith<_$Succeeded> get copyWith =>
      __$$SucceededCopyWithImpl<_$Succeeded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(UserConsent consent) initial,
    required TResult Function(UserConsent consent) succeeded,
  }) {
    return succeeded(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(UserConsent consent)? initial,
    TResult? Function(UserConsent consent)? succeeded,
  }) {
    return succeeded?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(UserConsent consent)? initial,
    TResult Function(UserConsent consent)? succeeded,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class Succeeded implements CookiesState {
  const factory Succeeded(final UserConsent consent) = _$Succeeded;

  UserConsent get consent;
  @JsonKey(ignore: true)
  _$$SucceededCopyWith<_$Succeeded> get copyWith =>
      throw _privateConstructorUsedError;
}
