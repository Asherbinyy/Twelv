// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationServiceStateTearOff {
  const _$AuthenticationServiceStateTearOff();

  AuthenticationServiceStateLoading loading() {
    return const AuthenticationServiceStateLoading();
  }

  AuthenticationServiceStateError error(AuthenticationError error) {
    return AuthenticationServiceStateError(
      error,
    );
  }

  AuthenticationServiceStateCanceled canceled() {
    return const AuthenticationServiceStateCanceled();
  }

  AuthenticationServiceStateNeedsConfirmation needsConfirmation() {
    return const AuthenticationServiceStateNeedsConfirmation();
  }

  AuthenticationServiceStateTokenReceived authTokenReceived(String authToken) {
    return AuthenticationServiceStateTokenReceived(
      authToken,
    );
  }
}

/// @nodoc
const $AuthenticationServiceState = _$AuthenticationServiceStateTearOff();

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
      _$AuthenticationServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationServiceStateCopyWithImpl<$Res>
    implements $AuthenticationServiceStateCopyWith<$Res> {
  _$AuthenticationServiceStateCopyWithImpl(this._value, this._then);

  final AuthenticationServiceState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationServiceState) _then;
}

/// @nodoc
abstract class $AuthenticationServiceStateLoadingCopyWith<$Res> {
  factory $AuthenticationServiceStateLoadingCopyWith(
          AuthenticationServiceStateLoading value,
          $Res Function(AuthenticationServiceStateLoading) then) =
      _$AuthenticationServiceStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationServiceStateLoadingCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res>
    implements $AuthenticationServiceStateLoadingCopyWith<$Res> {
  _$AuthenticationServiceStateLoadingCopyWithImpl(
      AuthenticationServiceStateLoading _value,
      $Res Function(AuthenticationServiceStateLoading) _then)
      : super(_value, (v) => _then(v as AuthenticationServiceStateLoading));

  @override
  AuthenticationServiceStateLoading get _value =>
      super._value as AuthenticationServiceStateLoading;
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
        (other is AuthenticationServiceStateLoading);
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
abstract class $AuthenticationServiceStateErrorCopyWith<$Res> {
  factory $AuthenticationServiceStateErrorCopyWith(
          AuthenticationServiceStateError value,
          $Res Function(AuthenticationServiceStateError) then) =
      _$AuthenticationServiceStateErrorCopyWithImpl<$Res>;
  $Res call({AuthenticationError error});
}

/// @nodoc
class _$AuthenticationServiceStateErrorCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res>
    implements $AuthenticationServiceStateErrorCopyWith<$Res> {
  _$AuthenticationServiceStateErrorCopyWithImpl(
      AuthenticationServiceStateError _value,
      $Res Function(AuthenticationServiceStateError) _then)
      : super(_value, (v) => _then(v as AuthenticationServiceStateError));

  @override
  AuthenticationServiceStateError get _value =>
      super._value as AuthenticationServiceStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthenticationServiceStateError(
      error == freezed
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
        (other is AuthenticationServiceStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AuthenticationServiceStateErrorCopyWith<AuthenticationServiceStateError>
      get copyWith => _$AuthenticationServiceStateErrorCopyWithImpl<
          AuthenticationServiceStateError>(this, _$identity);

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
  const factory AuthenticationServiceStateError(AuthenticationError error) =
      _$AuthenticationServiceStateError;

  AuthenticationError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationServiceStateErrorCopyWith<AuthenticationServiceStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationServiceStateCanceledCopyWith<$Res> {
  factory $AuthenticationServiceStateCanceledCopyWith(
          AuthenticationServiceStateCanceled value,
          $Res Function(AuthenticationServiceStateCanceled) then) =
      _$AuthenticationServiceStateCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationServiceStateCanceledCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res>
    implements $AuthenticationServiceStateCanceledCopyWith<$Res> {
  _$AuthenticationServiceStateCanceledCopyWithImpl(
      AuthenticationServiceStateCanceled _value,
      $Res Function(AuthenticationServiceStateCanceled) _then)
      : super(_value, (v) => _then(v as AuthenticationServiceStateCanceled));

  @override
  AuthenticationServiceStateCanceled get _value =>
      super._value as AuthenticationServiceStateCanceled;
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
        (other is AuthenticationServiceStateCanceled);
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
abstract class $AuthenticationServiceStateNeedsConfirmationCopyWith<$Res> {
  factory $AuthenticationServiceStateNeedsConfirmationCopyWith(
          AuthenticationServiceStateNeedsConfirmation value,
          $Res Function(AuthenticationServiceStateNeedsConfirmation) then) =
      _$AuthenticationServiceStateNeedsConfirmationCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationServiceStateNeedsConfirmationCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res>
    implements $AuthenticationServiceStateNeedsConfirmationCopyWith<$Res> {
  _$AuthenticationServiceStateNeedsConfirmationCopyWithImpl(
      AuthenticationServiceStateNeedsConfirmation _value,
      $Res Function(AuthenticationServiceStateNeedsConfirmation) _then)
      : super(_value,
            (v) => _then(v as AuthenticationServiceStateNeedsConfirmation));

  @override
  AuthenticationServiceStateNeedsConfirmation get _value =>
      super._value as AuthenticationServiceStateNeedsConfirmation;
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
        (other is AuthenticationServiceStateNeedsConfirmation);
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
abstract class $AuthenticationServiceStateTokenReceivedCopyWith<$Res> {
  factory $AuthenticationServiceStateTokenReceivedCopyWith(
          AuthenticationServiceStateTokenReceived value,
          $Res Function(AuthenticationServiceStateTokenReceived) then) =
      _$AuthenticationServiceStateTokenReceivedCopyWithImpl<$Res>;
  $Res call({String authToken});
}

/// @nodoc
class _$AuthenticationServiceStateTokenReceivedCopyWithImpl<$Res>
    extends _$AuthenticationServiceStateCopyWithImpl<$Res>
    implements $AuthenticationServiceStateTokenReceivedCopyWith<$Res> {
  _$AuthenticationServiceStateTokenReceivedCopyWithImpl(
      AuthenticationServiceStateTokenReceived _value,
      $Res Function(AuthenticationServiceStateTokenReceived) _then)
      : super(
            _value, (v) => _then(v as AuthenticationServiceStateTokenReceived));

  @override
  AuthenticationServiceStateTokenReceived get _value =>
      super._value as AuthenticationServiceStateTokenReceived;

  @override
  $Res call({
    Object? authToken = freezed,
  }) {
    return _then(AuthenticationServiceStateTokenReceived(
      authToken == freezed
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
        (other is AuthenticationServiceStateTokenReceived &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authToken);

  @JsonKey(ignore: true)
  @override
  $AuthenticationServiceStateTokenReceivedCopyWith<
          AuthenticationServiceStateTokenReceived>
      get copyWith => _$AuthenticationServiceStateTokenReceivedCopyWithImpl<
          AuthenticationServiceStateTokenReceived>(this, _$identity);

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
  const factory AuthenticationServiceStateTokenReceived(String authToken) =
      _$AuthenticationServiceStateTokenReceived;

  String get authToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationServiceStateTokenReceivedCopyWith<
          AuthenticationServiceStateTokenReceived>
      get copyWith => throw _privateConstructorUsedError;
}
