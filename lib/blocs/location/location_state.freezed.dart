// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  APIError apiError(Exception error) {
    return APIError(
      error,
    );
  }

  GPSDenied gpsDenied(Exception error) {
    return GPSDenied(
      error,
    );
  }

  Success success() {
    return const Success();
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Exception error) gpsDenied,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Exception error)? gpsDenied,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(APIError value) apiError,
    required TResult Function(GPSDenied value) gpsDenied,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(APIError value)? apiError,
    TResult Function(GPSDenied value)? gpsDenied,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
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
    return 'LocationState.initial()';
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
    required TResult Function(Exception error) gpsDenied,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Exception error)? gpsDenied,
    TResult Function()? success,
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
    required TResult Function(APIError value) apiError,
    required TResult Function(GPSDenied value) gpsDenied,
    required TResult Function(Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(APIError value)? apiError,
    TResult Function(GPSDenied value)? gpsDenied,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LocationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
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
    return 'LocationState.loading()';
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
    required TResult Function(Exception error) gpsDenied,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Exception error)? gpsDenied,
    TResult Function()? success,
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
    required TResult Function(APIError value) apiError,
    required TResult Function(GPSDenied value) gpsDenied,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(APIError value)? apiError,
    TResult Function(GPSDenied value)? gpsDenied,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LocationState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $APIErrorCopyWith<$Res> {
  factory $APIErrorCopyWith(APIError value, $Res Function(APIError) then) =
      _$APIErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$APIErrorCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements $APIErrorCopyWith<$Res> {
  _$APIErrorCopyWithImpl(APIError _value, $Res Function(APIError) _then)
      : super(_value, (v) => _then(v as APIError));

  @override
  APIError get _value => super._value as APIError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(APIError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc
class _$APIError implements APIError {
  const _$APIError(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'LocationState.apiError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is APIError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $APIErrorCopyWith<APIError> get copyWith =>
      _$APIErrorCopyWithImpl<APIError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Exception error) gpsDenied,
    required TResult Function() success,
  }) {
    return apiError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Exception error)? gpsDenied,
    TResult Function()? success,
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
    required TResult Function(APIError value) apiError,
    required TResult Function(GPSDenied value) gpsDenied,
    required TResult Function(Success value) success,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(APIError value)? apiError,
    TResult Function(GPSDenied value)? gpsDenied,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class APIError implements LocationState {
  const factory APIError(Exception error) = _$APIError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIErrorCopyWith<APIError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPSDeniedCopyWith<$Res> {
  factory $GPSDeniedCopyWith(GPSDenied value, $Res Function(GPSDenied) then) =
      _$GPSDeniedCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$GPSDeniedCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements $GPSDeniedCopyWith<$Res> {
  _$GPSDeniedCopyWithImpl(GPSDenied _value, $Res Function(GPSDenied) _then)
      : super(_value, (v) => _then(v as GPSDenied));

  @override
  GPSDenied get _value => super._value as GPSDenied;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GPSDenied(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc
class _$GPSDenied implements GPSDenied {
  const _$GPSDenied(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'LocationState.gpsDenied(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GPSDenied &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $GPSDeniedCopyWith<GPSDenied> get copyWith =>
      _$GPSDeniedCopyWithImpl<GPSDenied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Exception error) gpsDenied,
    required TResult Function() success,
  }) {
    return gpsDenied(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Exception error)? gpsDenied,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (gpsDenied != null) {
      return gpsDenied(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(APIError value) apiError,
    required TResult Function(GPSDenied value) gpsDenied,
    required TResult Function(Success value) success,
  }) {
    return gpsDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(APIError value)? apiError,
    TResult Function(GPSDenied value)? gpsDenied,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (gpsDenied != null) {
      return gpsDenied(this);
    }
    return orElse();
  }
}

abstract class GPSDenied implements LocationState {
  const factory GPSDenied(Exception error) = _$GPSDenied;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPSDeniedCopyWith<GPSDenied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;
}

/// @nodoc
class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'LocationState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(Exception error) gpsDenied,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(Exception error)? gpsDenied,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(APIError value) apiError,
    required TResult Function(GPSDenied value) gpsDenied,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(APIError value)? apiError,
    TResult Function(GPSDenied value)? gpsDenied,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LocationState {
  const factory Success() = _$Success;
}
