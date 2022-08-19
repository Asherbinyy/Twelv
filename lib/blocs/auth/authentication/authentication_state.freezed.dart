// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  SmsVerification smsVerification() {
    return const SmsVerification();
  }

  TokenReceived tokenReceived({required String authenticationToken}) {
    return TokenReceived(
      authenticationToken: authenticationToken,
    );
  }

  AuthenticationStateError error(AuthenticationError error,
      {DateTime? occurredAt}) {
    return AuthenticationStateError(
      error,
      occurredAt: occurredAt,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsVerification,
    required TResult Function(String authenticationToken) tokenReceived,
    required TResult Function(AuthenticationError error, DateTime? occurredAt)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsVerification,
    TResult Function(String authenticationToken)? tokenReceived,
    TResult Function(AuthenticationError error, DateTime? occurredAt)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SmsVerification value) smsVerification,
    required TResult Function(TokenReceived value) tokenReceived,
    required TResult Function(AuthenticationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsVerification value)? smsVerification,
    TResult Function(TokenReceived value)? tokenReceived,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationState.initial'));
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
    required TResult Function() smsVerification,
    required TResult Function(String authenticationToken) tokenReceived,
    required TResult Function(AuthenticationError error, DateTime? occurredAt)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsVerification,
    TResult Function(String authenticationToken)? tokenReceived,
    TResult Function(AuthenticationError error, DateTime? occurredAt)? error,
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
    required TResult Function(SmsVerification value) smsVerification,
    required TResult Function(TokenReceived value) tokenReceived,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsVerification value)? smsVerification,
    TResult Function(TokenReceived value)? tokenReceived,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationState.loading'));
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
    required TResult Function() smsVerification,
    required TResult Function(String authenticationToken) tokenReceived,
    required TResult Function(AuthenticationError error, DateTime? occurredAt)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsVerification,
    TResult Function(String authenticationToken)? tokenReceived,
    TResult Function(AuthenticationError error, DateTime? occurredAt)? error,
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
    required TResult Function(SmsVerification value) smsVerification,
    required TResult Function(TokenReceived value) tokenReceived,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsVerification value)? smsVerification,
    TResult Function(TokenReceived value)? tokenReceived,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthenticationState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SmsVerificationCopyWith<$Res> {
  factory $SmsVerificationCopyWith(
          SmsVerification value, $Res Function(SmsVerification) then) =
      _$SmsVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class _$SmsVerificationCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $SmsVerificationCopyWith<$Res> {
  _$SmsVerificationCopyWithImpl(
      SmsVerification _value, $Res Function(SmsVerification) _then)
      : super(_value, (v) => _then(v as SmsVerification));

  @override
  SmsVerification get _value => super._value as SmsVerification;
}

/// @nodoc
class _$SmsVerification
    with DiagnosticableTreeMixin
    implements SmsVerification {
  const _$SmsVerification();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.smsVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.smsVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SmsVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsVerification,
    required TResult Function(String authenticationToken) tokenReceived,
    required TResult Function(AuthenticationError error, DateTime? occurredAt)
        error,
  }) {
    return smsVerification();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsVerification,
    TResult Function(String authenticationToken)? tokenReceived,
    TResult Function(AuthenticationError error, DateTime? occurredAt)? error,
    required TResult orElse(),
  }) {
    if (smsVerification != null) {
      return smsVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SmsVerification value) smsVerification,
    required TResult Function(TokenReceived value) tokenReceived,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return smsVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsVerification value)? smsVerification,
    TResult Function(TokenReceived value)? tokenReceived,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (smsVerification != null) {
      return smsVerification(this);
    }
    return orElse();
  }
}

abstract class SmsVerification implements AuthenticationState {
  const factory SmsVerification() = _$SmsVerification;
}

/// @nodoc
abstract class $TokenReceivedCopyWith<$Res> {
  factory $TokenReceivedCopyWith(
          TokenReceived value, $Res Function(TokenReceived) then) =
      _$TokenReceivedCopyWithImpl<$Res>;
  $Res call({String authenticationToken});
}

/// @nodoc
class _$TokenReceivedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $TokenReceivedCopyWith<$Res> {
  _$TokenReceivedCopyWithImpl(
      TokenReceived _value, $Res Function(TokenReceived) _then)
      : super(_value, (v) => _then(v as TokenReceived));

  @override
  TokenReceived get _value => super._value as TokenReceived;

  @override
  $Res call({
    Object? authenticationToken = freezed,
  }) {
    return _then(TokenReceived(
      authenticationToken: authenticationToken == freezed
          ? _value.authenticationToken
          : authenticationToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$TokenReceived with DiagnosticableTreeMixin implements TokenReceived {
  const _$TokenReceived({required this.authenticationToken});

  @override
  final String authenticationToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.tokenReceived(authenticationToken: $authenticationToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.tokenReceived'))
      ..add(DiagnosticsProperty('authenticationToken', authenticationToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TokenReceived &&
            (identical(other.authenticationToken, authenticationToken) ||
                const DeepCollectionEquality()
                    .equals(other.authenticationToken, authenticationToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authenticationToken);

  @JsonKey(ignore: true)
  @override
  $TokenReceivedCopyWith<TokenReceived> get copyWith =>
      _$TokenReceivedCopyWithImpl<TokenReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsVerification,
    required TResult Function(String authenticationToken) tokenReceived,
    required TResult Function(AuthenticationError error, DateTime? occurredAt)
        error,
  }) {
    return tokenReceived(authenticationToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsVerification,
    TResult Function(String authenticationToken)? tokenReceived,
    TResult Function(AuthenticationError error, DateTime? occurredAt)? error,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(authenticationToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SmsVerification value) smsVerification,
    required TResult Function(TokenReceived value) tokenReceived,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return tokenReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsVerification value)? smsVerification,
    TResult Function(TokenReceived value)? tokenReceived,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(this);
    }
    return orElse();
  }
}

abstract class TokenReceived implements AuthenticationState {
  const factory TokenReceived({required String authenticationToken}) =
      _$TokenReceived;

  String get authenticationToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenReceivedCopyWith<TokenReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateErrorCopyWith<$Res> {
  factory $AuthenticationStateErrorCopyWith(AuthenticationStateError value,
          $Res Function(AuthenticationStateError) then) =
      _$AuthenticationStateErrorCopyWithImpl<$Res>;
  $Res call({AuthenticationError error, DateTime? occurredAt});
}

/// @nodoc
class _$AuthenticationStateErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateErrorCopyWith<$Res> {
  _$AuthenticationStateErrorCopyWithImpl(AuthenticationStateError _value,
      $Res Function(AuthenticationStateError) _then)
      : super(_value, (v) => _then(v as AuthenticationStateError));

  @override
  AuthenticationStateError get _value =>
      super._value as AuthenticationStateError;

  @override
  $Res call({
    Object? error = freezed,
    Object? occurredAt = freezed,
  }) {
    return _then(AuthenticationStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthenticationError,
      occurredAt: occurredAt == freezed
          ? _value.occurredAt
          : occurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
class _$AuthenticationStateError
    with DiagnosticableTreeMixin
    implements AuthenticationStateError {
  const _$AuthenticationStateError(this.error, {this.occurredAt});

  @override
  final AuthenticationError error;
  @override
  final DateTime? occurredAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.error(error: $error, occurredAt: $occurredAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.error'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('occurredAt', occurredAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.occurredAt, occurredAt) ||
                const DeepCollectionEquality()
                    .equals(other.occurredAt, occurredAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(occurredAt);

  @JsonKey(ignore: true)
  @override
  $AuthenticationStateErrorCopyWith<AuthenticationStateError> get copyWith =>
      _$AuthenticationStateErrorCopyWithImpl<AuthenticationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsVerification,
    required TResult Function(String authenticationToken) tokenReceived,
    required TResult Function(AuthenticationError error, DateTime? occurredAt)
        error,
  }) {
    return error(this.error, occurredAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsVerification,
    TResult Function(String authenticationToken)? tokenReceived,
    TResult Function(AuthenticationError error, DateTime? occurredAt)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, occurredAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SmsVerification value) smsVerification,
    required TResult Function(TokenReceived value) tokenReceived,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsVerification value)? smsVerification,
    TResult Function(TokenReceived value)? tokenReceived,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateError implements AuthenticationState {
  const factory AuthenticationStateError(AuthenticationError error,
      {DateTime? occurredAt}) = _$AuthenticationStateError;

  AuthenticationError get error => throw _privateConstructorUsedError;
  DateTime? get occurredAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationStateErrorCopyWith<AuthenticationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
