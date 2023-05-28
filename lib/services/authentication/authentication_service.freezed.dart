// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthenticationError error) error,
    required TResult Function() canceled,
    required TResult Function() needsConfirmation,
    required TResult Function(String authToken) authTokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthenticationError error)? error,
    TResult? Function()? canceled,
    TResult? Function()? needsConfirmation,
    TResult? Function(String authToken)? authTokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthenticationError error)? error,
    TResult Function()? canceled,
    TResult Function()? needsConfirmation,
    TResult Function(String authToken)? authTokenReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationServiceStateLoading value) loading,
    required TResult Function(AuthenticationServiceStateError value) error,
    required TResult Function(AuthenticationServiceStateCanceled value)
        canceled,
    required TResult Function(AuthenticationServiceStateNeedsConfirmation value)
        needsConfirmation,
    required TResult Function(AuthenticationServiceStateTokenReceived value)
        authTokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationServiceStateLoading value)? loading,
    TResult? Function(AuthenticationServiceStateError value)? error,
    TResult? Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult? Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult? Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationServiceStateLoading value)? loading,
    TResult Function(AuthenticationServiceStateError value)? error,
    TResult Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationServiceStateCopyWith<$Res> {
  factory $AuthenticationServiceStateCopyWith(AuthenticationServiceState value,
          $Res Function(AuthenticationServiceState) then) =
      _$AuthenticationServiceStateCopyWithImpl<$Res,
          AuthenticationServiceState>;
}

/// @nodoc
class _$AuthenticationServiceStateCopyWithImpl<$Res,
        $Val extends AuthenticationServiceState>
    implements $AuthenticationServiceStateCopyWith<$Res> {
  _$AuthenticationServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationServiceStateLoadingCopyWith<$Res> {
  factory _$$AuthenticationServiceStateLoadingCopyWith(
          _$AuthenticationServiceStateLoading value,
          $Res Function(_$AuthenticationServiceStateLoading) then) =
      __$$AuthenticationServiceStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationServiceStateLoadingCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res,
        _$AuthenticationServiceStateLoading>
    implements _$$AuthenticationServiceStateLoadingCopyWith<$Res> {
  __$$AuthenticationServiceStateLoadingCopyWithImpl(
      _$AuthenticationServiceStateLoading _value,
      $Res Function(_$AuthenticationServiceStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationServiceStateLoading
    implements AuthenticationServiceStateLoading {
  const _$AuthenticationServiceStateLoading();

  @override
  String toString() {
    return 'AuthenticationServiceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationServiceStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthenticationError error) error,
    required TResult Function() canceled,
    required TResult Function() needsConfirmation,
    required TResult Function(String authToken) authTokenReceived,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthenticationError error)? error,
    TResult? Function()? canceled,
    TResult? Function()? needsConfirmation,
    TResult? Function(String authToken)? authTokenReceived,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthenticationError error)? error,
    TResult Function()? canceled,
    TResult Function()? needsConfirmation,
    TResult Function(String authToken)? authTokenReceived,
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
    required TResult Function(AuthenticationServiceStateLoading value) loading,
    required TResult Function(AuthenticationServiceStateError value) error,
    required TResult Function(AuthenticationServiceStateCanceled value)
        canceled,
    required TResult Function(AuthenticationServiceStateNeedsConfirmation value)
        needsConfirmation,
    required TResult Function(AuthenticationServiceStateTokenReceived value)
        authTokenReceived,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationServiceStateLoading value)? loading,
    TResult? Function(AuthenticationServiceStateError value)? error,
    TResult? Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult? Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult? Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationServiceStateLoading value)? loading,
    TResult Function(AuthenticationServiceStateError value)? error,
    TResult Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthenticationServiceStateLoading
    implements AuthenticationServiceState {
  const factory AuthenticationServiceStateLoading() =
      _$AuthenticationServiceStateLoading;
}

/// @nodoc
abstract class _$$AuthenticationServiceStateErrorCopyWith<$Res> {
  factory _$$AuthenticationServiceStateErrorCopyWith(
          _$AuthenticationServiceStateError value,
          $Res Function(_$AuthenticationServiceStateError) then) =
      __$$AuthenticationServiceStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationError error});
}

/// @nodoc
class __$$AuthenticationServiceStateErrorCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res,
        _$AuthenticationServiceStateError>
    implements _$$AuthenticationServiceStateErrorCopyWith<$Res> {
  __$$AuthenticationServiceStateErrorCopyWithImpl(
      _$AuthenticationServiceStateError _value,
      $Res Function(_$AuthenticationServiceStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthenticationServiceStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthenticationError,
    ));
  }
}

/// @nodoc

class _$AuthenticationServiceStateError
    implements AuthenticationServiceStateError {
  const _$AuthenticationServiceStateError(this.error);

  @override
  final AuthenticationError error;

  @override
  String toString() {
    return 'AuthenticationServiceState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationServiceStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationServiceStateErrorCopyWith<_$AuthenticationServiceStateError>
      get copyWith => __$$AuthenticationServiceStateErrorCopyWithImpl<
          _$AuthenticationServiceStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthenticationError error) error,
    required TResult Function() canceled,
    required TResult Function() needsConfirmation,
    required TResult Function(String authToken) authTokenReceived,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthenticationError error)? error,
    TResult? Function()? canceled,
    TResult? Function()? needsConfirmation,
    TResult? Function(String authToken)? authTokenReceived,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthenticationError error)? error,
    TResult Function()? canceled,
    TResult Function()? needsConfirmation,
    TResult Function(String authToken)? authTokenReceived,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationServiceStateLoading value) loading,
    required TResult Function(AuthenticationServiceStateError value) error,
    required TResult Function(AuthenticationServiceStateCanceled value)
        canceled,
    required TResult Function(AuthenticationServiceStateNeedsConfirmation value)
        needsConfirmation,
    required TResult Function(AuthenticationServiceStateTokenReceived value)
        authTokenReceived,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationServiceStateLoading value)? loading,
    TResult? Function(AuthenticationServiceStateError value)? error,
    TResult? Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult? Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult? Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationServiceStateLoading value)? loading,
    TResult Function(AuthenticationServiceStateError value)? error,
    TResult Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthenticationServiceStateError
    implements AuthenticationServiceState {
  const factory AuthenticationServiceStateError(
      final AuthenticationError error) = _$AuthenticationServiceStateError;

  AuthenticationError get error;
  @JsonKey(ignore: true)
  _$$AuthenticationServiceStateErrorCopyWith<_$AuthenticationServiceStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationServiceStateCanceledCopyWith<$Res> {
  factory _$$AuthenticationServiceStateCanceledCopyWith(
          _$AuthenticationServiceStateCanceled value,
          $Res Function(_$AuthenticationServiceStateCanceled) then) =
      __$$AuthenticationServiceStateCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationServiceStateCanceledCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res,
        _$AuthenticationServiceStateCanceled>
    implements _$$AuthenticationServiceStateCanceledCopyWith<$Res> {
  __$$AuthenticationServiceStateCanceledCopyWithImpl(
      _$AuthenticationServiceStateCanceled _value,
      $Res Function(_$AuthenticationServiceStateCanceled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationServiceStateCanceled
    implements AuthenticationServiceStateCanceled {
  const _$AuthenticationServiceStateCanceled();

  @override
  String toString() {
    return 'AuthenticationServiceState.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationServiceStateCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthenticationError error) error,
    required TResult Function() canceled,
    required TResult Function() needsConfirmation,
    required TResult Function(String authToken) authTokenReceived,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthenticationError error)? error,
    TResult? Function()? canceled,
    TResult? Function()? needsConfirmation,
    TResult? Function(String authToken)? authTokenReceived,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthenticationError error)? error,
    TResult Function()? canceled,
    TResult Function()? needsConfirmation,
    TResult Function(String authToken)? authTokenReceived,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationServiceStateLoading value) loading,
    required TResult Function(AuthenticationServiceStateError value) error,
    required TResult Function(AuthenticationServiceStateCanceled value)
        canceled,
    required TResult Function(AuthenticationServiceStateNeedsConfirmation value)
        needsConfirmation,
    required TResult Function(AuthenticationServiceStateTokenReceived value)
        authTokenReceived,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationServiceStateLoading value)? loading,
    TResult? Function(AuthenticationServiceStateError value)? error,
    TResult? Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult? Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult? Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationServiceStateLoading value)? loading,
    TResult Function(AuthenticationServiceStateError value)? error,
    TResult Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class AuthenticationServiceStateCanceled
    implements AuthenticationServiceState {
  const factory AuthenticationServiceStateCanceled() =
      _$AuthenticationServiceStateCanceled;
}

/// @nodoc
abstract class _$$AuthenticationServiceStateNeedsConfirmationCopyWith<$Res> {
  factory _$$AuthenticationServiceStateNeedsConfirmationCopyWith(
          _$AuthenticationServiceStateNeedsConfirmation value,
          $Res Function(_$AuthenticationServiceStateNeedsConfirmation) then) =
      __$$AuthenticationServiceStateNeedsConfirmationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationServiceStateNeedsConfirmationCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res,
        _$AuthenticationServiceStateNeedsConfirmation>
    implements _$$AuthenticationServiceStateNeedsConfirmationCopyWith<$Res> {
  __$$AuthenticationServiceStateNeedsConfirmationCopyWithImpl(
      _$AuthenticationServiceStateNeedsConfirmation _value,
      $Res Function(_$AuthenticationServiceStateNeedsConfirmation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationServiceStateNeedsConfirmation
    implements AuthenticationServiceStateNeedsConfirmation {
  const _$AuthenticationServiceStateNeedsConfirmation();

  @override
  String toString() {
    return 'AuthenticationServiceState.needsConfirmation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationServiceStateNeedsConfirmation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthenticationError error) error,
    required TResult Function() canceled,
    required TResult Function() needsConfirmation,
    required TResult Function(String authToken) authTokenReceived,
  }) {
    return needsConfirmation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthenticationError error)? error,
    TResult? Function()? canceled,
    TResult? Function()? needsConfirmation,
    TResult? Function(String authToken)? authTokenReceived,
  }) {
    return needsConfirmation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthenticationError error)? error,
    TResult Function()? canceled,
    TResult Function()? needsConfirmation,
    TResult Function(String authToken)? authTokenReceived,
    required TResult orElse(),
  }) {
    if (needsConfirmation != null) {
      return needsConfirmation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationServiceStateLoading value) loading,
    required TResult Function(AuthenticationServiceStateError value) error,
    required TResult Function(AuthenticationServiceStateCanceled value)
        canceled,
    required TResult Function(AuthenticationServiceStateNeedsConfirmation value)
        needsConfirmation,
    required TResult Function(AuthenticationServiceStateTokenReceived value)
        authTokenReceived,
  }) {
    return needsConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationServiceStateLoading value)? loading,
    TResult? Function(AuthenticationServiceStateError value)? error,
    TResult? Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult? Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult? Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
  }) {
    return needsConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationServiceStateLoading value)? loading,
    TResult Function(AuthenticationServiceStateError value)? error,
    TResult Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
    required TResult orElse(),
  }) {
    if (needsConfirmation != null) {
      return needsConfirmation(this);
    }
    return orElse();
  }
}

abstract class AuthenticationServiceStateNeedsConfirmation
    implements AuthenticationServiceState {
  const factory AuthenticationServiceStateNeedsConfirmation() =
      _$AuthenticationServiceStateNeedsConfirmation;
}

/// @nodoc
abstract class _$$AuthenticationServiceStateTokenReceivedCopyWith<$Res> {
  factory _$$AuthenticationServiceStateTokenReceivedCopyWith(
          _$AuthenticationServiceStateTokenReceived value,
          $Res Function(_$AuthenticationServiceStateTokenReceived) then) =
      __$$AuthenticationServiceStateTokenReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({String authToken});
}

/// @nodoc
class __$$AuthenticationServiceStateTokenReceivedCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res,
        _$AuthenticationServiceStateTokenReceived>
    implements _$$AuthenticationServiceStateTokenReceivedCopyWith<$Res> {
  __$$AuthenticationServiceStateTokenReceivedCopyWithImpl(
      _$AuthenticationServiceStateTokenReceived _value,
      $Res Function(_$AuthenticationServiceStateTokenReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_$AuthenticationServiceStateTokenReceived(
      null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationServiceStateTokenReceived
    implements AuthenticationServiceStateTokenReceived {
  const _$AuthenticationServiceStateTokenReceived(this.authToken);

  @override
  final String authToken;

  @override
  String toString() {
    return 'AuthenticationServiceState.authTokenReceived(authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationServiceStateTokenReceived &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationServiceStateTokenReceivedCopyWith<
          _$AuthenticationServiceStateTokenReceived>
      get copyWith => __$$AuthenticationServiceStateTokenReceivedCopyWithImpl<
          _$AuthenticationServiceStateTokenReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthenticationError error) error,
    required TResult Function() canceled,
    required TResult Function() needsConfirmation,
    required TResult Function(String authToken) authTokenReceived,
  }) {
    return authTokenReceived(authToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthenticationError error)? error,
    TResult? Function()? canceled,
    TResult? Function()? needsConfirmation,
    TResult? Function(String authToken)? authTokenReceived,
  }) {
    return authTokenReceived?.call(authToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthenticationError error)? error,
    TResult Function()? canceled,
    TResult Function()? needsConfirmation,
    TResult Function(String authToken)? authTokenReceived,
    required TResult orElse(),
  }) {
    if (authTokenReceived != null) {
      return authTokenReceived(authToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationServiceStateLoading value) loading,
    required TResult Function(AuthenticationServiceStateError value) error,
    required TResult Function(AuthenticationServiceStateCanceled value)
        canceled,
    required TResult Function(AuthenticationServiceStateNeedsConfirmation value)
        needsConfirmation,
    required TResult Function(AuthenticationServiceStateTokenReceived value)
        authTokenReceived,
  }) {
    return authTokenReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationServiceStateLoading value)? loading,
    TResult? Function(AuthenticationServiceStateError value)? error,
    TResult? Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult? Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult? Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
  }) {
    return authTokenReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationServiceStateLoading value)? loading,
    TResult Function(AuthenticationServiceStateError value)? error,
    TResult Function(AuthenticationServiceStateCanceled value)? canceled,
    TResult Function(AuthenticationServiceStateNeedsConfirmation value)?
        needsConfirmation,
    TResult Function(AuthenticationServiceStateTokenReceived value)?
        authTokenReceived,
    required TResult orElse(),
  }) {
    if (authTokenReceived != null) {
      return authTokenReceived(this);
    }
    return orElse();
  }
}

abstract class AuthenticationServiceStateTokenReceived
    implements AuthenticationServiceState {
  const factory AuthenticationServiceStateTokenReceived(
      final String authToken) = _$AuthenticationServiceStateTokenReceived;

  String get authToken;
  @JsonKey(ignore: true)
  _$$AuthenticationServiceStateTokenReceivedCopyWith<
          _$AuthenticationServiceStateTokenReceived>
      get copyWith => throw _privateConstructorUsedError;
}
