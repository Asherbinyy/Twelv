// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cookies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CookiesStateTearOff {
  const _$CookiesStateTearOff();

  Loading loading() {
    return const Loading();
  }

  ApiError apiError(Exception error) {
    return ApiError(
      error,
    );
  }

  Initial initial(UserConsent consent) {
    return Initial(
      consent,
    );
  }

  Succeeded succeeded(UserConsent consent) {
    return Succeeded(
      consent,
    );
  }
}

/// @nodoc
const $CookiesState = _$CookiesStateTearOff();

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
      _$CookiesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CookiesStateCopyWithImpl<$Res> implements $CookiesStateCopyWith<$Res> {
  _$CookiesStateCopyWithImpl(this._value, this._then);

  final CookiesState _value;
  // ignore: unused_field
  final $Res Function(CookiesState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CookiesStateCopyWithImpl<$Res>
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
    return 'CookiesState.loading()';
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
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(UserConsent consent) initial,
    required TResult Function(UserConsent consent) succeeded,
  }) {
    return loading();
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
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> extends _$CookiesStateCopyWithImpl<$Res>
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
    return 'CookiesState.apiError(error: $error)';
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
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(UserConsent consent) initial,
    required TResult Function(UserConsent consent) succeeded,
  }) {
    return apiError(error);
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
  const factory ApiError(Exception error) = _$ApiError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({UserConsent consent});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$CookiesStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? consent = freezed,
  }) {
    return _then(Initial(
      consent == freezed
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
        (other is Initial &&
            (identical(other.consent, consent) ||
                const DeepCollectionEquality().equals(other.consent, consent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(consent);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

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
  const factory Initial(UserConsent consent) = _$Initial;

  UserConsent get consent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SucceededCopyWith<$Res> {
  factory $SucceededCopyWith(Succeeded value, $Res Function(Succeeded) then) =
      _$SucceededCopyWithImpl<$Res>;
  $Res call({UserConsent consent});
}

/// @nodoc
class _$SucceededCopyWithImpl<$Res> extends _$CookiesStateCopyWithImpl<$Res>
    implements $SucceededCopyWith<$Res> {
  _$SucceededCopyWithImpl(Succeeded _value, $Res Function(Succeeded) _then)
      : super(_value, (v) => _then(v as Succeeded));

  @override
  Succeeded get _value => super._value as Succeeded;

  @override
  $Res call({
    Object? consent = freezed,
  }) {
    return _then(Succeeded(
      consent == freezed
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
        (other is Succeeded &&
            (identical(other.consent, consent) ||
                const DeepCollectionEquality().equals(other.consent, consent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(consent);

  @JsonKey(ignore: true)
  @override
  $SucceededCopyWith<Succeeded> get copyWith =>
      _$SucceededCopyWithImpl<Succeeded>(this, _$identity);

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
  const factory Succeeded(UserConsent consent) = _$Succeeded;

  UserConsent get consent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SucceededCopyWith<Succeeded> get copyWith =>
      throw _privateConstructorUsedError;
}
