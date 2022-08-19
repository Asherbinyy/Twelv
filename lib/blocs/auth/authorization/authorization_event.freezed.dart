// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authorization_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationEventTearOff {
  const _$AuthorizationEventTearOff();

  RestoreSession restoreSession() {
    return const RestoreSession();
  }

  NewAuthenticationToken newAuthenticationToken(String authenticationToken) {
    return NewAuthenticationToken(
      authenticationToken,
    );
  }

  AuthenticationTokenLost authenticationTokenLost() {
    return const AuthenticationTokenLost();
  }
}

/// @nodoc
const $AuthorizationEvent = _$AuthorizationEventTearOff();

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() restoreSession,
    required TResult Function(String authenticationToken)
        newAuthenticationToken,
    required TResult Function() authenticationTokenLost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? restoreSession,
    TResult Function(String authenticationToken)? newAuthenticationToken,
    TResult Function()? authenticationTokenLost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestoreSession value) restoreSession,
    required TResult Function(NewAuthenticationToken value)
        newAuthenticationToken,
    required TResult Function(AuthenticationTokenLost value)
        authenticationTokenLost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestoreSession value)? restoreSession,
    TResult Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult Function(AuthenticationTokenLost value)? authenticationTokenLost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  final AuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationEvent) _then;
}

/// @nodoc
abstract class $RestoreSessionCopyWith<$Res> {
  factory $RestoreSessionCopyWith(
          RestoreSession value, $Res Function(RestoreSession) then) =
      _$RestoreSessionCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestoreSessionCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $RestoreSessionCopyWith<$Res> {
  _$RestoreSessionCopyWithImpl(
      RestoreSession _value, $Res Function(RestoreSession) _then)
      : super(_value, (v) => _then(v as RestoreSession));

  @override
  RestoreSession get _value => super._value as RestoreSession;
}

/// @nodoc
class _$RestoreSession implements RestoreSession {
  const _$RestoreSession();

  @override
  String toString() {
    return 'AuthorizationEvent.restoreSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RestoreSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() restoreSession,
    required TResult Function(String authenticationToken)
        newAuthenticationToken,
    required TResult Function() authenticationTokenLost,
  }) {
    return restoreSession();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? restoreSession,
    TResult Function(String authenticationToken)? newAuthenticationToken,
    TResult Function()? authenticationTokenLost,
    required TResult orElse(),
  }) {
    if (restoreSession != null) {
      return restoreSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestoreSession value) restoreSession,
    required TResult Function(NewAuthenticationToken value)
        newAuthenticationToken,
    required TResult Function(AuthenticationTokenLost value)
        authenticationTokenLost,
  }) {
    return restoreSession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestoreSession value)? restoreSession,
    TResult Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult Function(AuthenticationTokenLost value)? authenticationTokenLost,
    required TResult orElse(),
  }) {
    if (restoreSession != null) {
      return restoreSession(this);
    }
    return orElse();
  }
}

abstract class RestoreSession implements AuthorizationEvent {
  const factory RestoreSession() = _$RestoreSession;
}

/// @nodoc
abstract class $NewAuthenticationTokenCopyWith<$Res> {
  factory $NewAuthenticationTokenCopyWith(NewAuthenticationToken value,
          $Res Function(NewAuthenticationToken) then) =
      _$NewAuthenticationTokenCopyWithImpl<$Res>;
  $Res call({String authenticationToken});
}

/// @nodoc
class _$NewAuthenticationTokenCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $NewAuthenticationTokenCopyWith<$Res> {
  _$NewAuthenticationTokenCopyWithImpl(NewAuthenticationToken _value,
      $Res Function(NewAuthenticationToken) _then)
      : super(_value, (v) => _then(v as NewAuthenticationToken));

  @override
  NewAuthenticationToken get _value => super._value as NewAuthenticationToken;

  @override
  $Res call({
    Object? authenticationToken = freezed,
  }) {
    return _then(NewAuthenticationToken(
      authenticationToken == freezed
          ? _value.authenticationToken
          : authenticationToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NewAuthenticationToken implements NewAuthenticationToken {
  const _$NewAuthenticationToken(this.authenticationToken);

  @override
  final String authenticationToken;

  @override
  String toString() {
    return 'AuthorizationEvent.newAuthenticationToken(authenticationToken: $authenticationToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewAuthenticationToken &&
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
  $NewAuthenticationTokenCopyWith<NewAuthenticationToken> get copyWith =>
      _$NewAuthenticationTokenCopyWithImpl<NewAuthenticationToken>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() restoreSession,
    required TResult Function(String authenticationToken)
        newAuthenticationToken,
    required TResult Function() authenticationTokenLost,
  }) {
    return newAuthenticationToken(authenticationToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? restoreSession,
    TResult Function(String authenticationToken)? newAuthenticationToken,
    TResult Function()? authenticationTokenLost,
    required TResult orElse(),
  }) {
    if (newAuthenticationToken != null) {
      return newAuthenticationToken(authenticationToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestoreSession value) restoreSession,
    required TResult Function(NewAuthenticationToken value)
        newAuthenticationToken,
    required TResult Function(AuthenticationTokenLost value)
        authenticationTokenLost,
  }) {
    return newAuthenticationToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestoreSession value)? restoreSession,
    TResult Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult Function(AuthenticationTokenLost value)? authenticationTokenLost,
    required TResult orElse(),
  }) {
    if (newAuthenticationToken != null) {
      return newAuthenticationToken(this);
    }
    return orElse();
  }
}

abstract class NewAuthenticationToken implements AuthorizationEvent {
  const factory NewAuthenticationToken(String authenticationToken) =
      _$NewAuthenticationToken;

  String get authenticationToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewAuthenticationTokenCopyWith<NewAuthenticationToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationTokenLostCopyWith<$Res> {
  factory $AuthenticationTokenLostCopyWith(AuthenticationTokenLost value,
          $Res Function(AuthenticationTokenLost) then) =
      _$AuthenticationTokenLostCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationTokenLostCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthenticationTokenLostCopyWith<$Res> {
  _$AuthenticationTokenLostCopyWithImpl(AuthenticationTokenLost _value,
      $Res Function(AuthenticationTokenLost) _then)
      : super(_value, (v) => _then(v as AuthenticationTokenLost));

  @override
  AuthenticationTokenLost get _value => super._value as AuthenticationTokenLost;
}

/// @nodoc
class _$AuthenticationTokenLost implements AuthenticationTokenLost {
  const _$AuthenticationTokenLost();

  @override
  String toString() {
    return 'AuthorizationEvent.authenticationTokenLost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticationTokenLost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() restoreSession,
    required TResult Function(String authenticationToken)
        newAuthenticationToken,
    required TResult Function() authenticationTokenLost,
  }) {
    return authenticationTokenLost();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? restoreSession,
    TResult Function(String authenticationToken)? newAuthenticationToken,
    TResult Function()? authenticationTokenLost,
    required TResult orElse(),
  }) {
    if (authenticationTokenLost != null) {
      return authenticationTokenLost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestoreSession value) restoreSession,
    required TResult Function(NewAuthenticationToken value)
        newAuthenticationToken,
    required TResult Function(AuthenticationTokenLost value)
        authenticationTokenLost,
  }) {
    return authenticationTokenLost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestoreSession value)? restoreSession,
    TResult Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult Function(AuthenticationTokenLost value)? authenticationTokenLost,
    required TResult orElse(),
  }) {
    if (authenticationTokenLost != null) {
      return authenticationTokenLost(this);
    }
    return orElse();
  }
}

abstract class AuthenticationTokenLost implements AuthorizationEvent {
  const factory AuthenticationTokenLost() = _$AuthenticationTokenLost;
}
