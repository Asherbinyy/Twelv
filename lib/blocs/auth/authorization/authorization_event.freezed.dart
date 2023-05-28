// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authorization_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? restoreSession,
    TResult? Function(String authenticationToken)? newAuthenticationToken,
    TResult? Function()? authenticationTokenLost,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestoreSession value)? restoreSession,
    TResult? Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult? Function(AuthenticationTokenLost value)? authenticationTokenLost,
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
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RestoreSessionCopyWith<$Res> {
  factory _$$RestoreSessionCopyWith(
          _$RestoreSession value, $Res Function(_$RestoreSession) then) =
      __$$RestoreSessionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreSessionCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$RestoreSession>
    implements _$$RestoreSessionCopyWith<$Res> {
  __$$RestoreSessionCopyWithImpl(
      _$RestoreSession _value, $Res Function(_$RestoreSession) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreSession);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? restoreSession,
    TResult? Function(String authenticationToken)? newAuthenticationToken,
    TResult? Function()? authenticationTokenLost,
  }) {
    return restoreSession?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestoreSession value)? restoreSession,
    TResult? Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult? Function(AuthenticationTokenLost value)? authenticationTokenLost,
  }) {
    return restoreSession?.call(this);
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
abstract class _$$NewAuthenticationTokenCopyWith<$Res> {
  factory _$$NewAuthenticationTokenCopyWith(_$NewAuthenticationToken value,
          $Res Function(_$NewAuthenticationToken) then) =
      __$$NewAuthenticationTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String authenticationToken});
}

/// @nodoc
class __$$NewAuthenticationTokenCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$NewAuthenticationToken>
    implements _$$NewAuthenticationTokenCopyWith<$Res> {
  __$$NewAuthenticationTokenCopyWithImpl(_$NewAuthenticationToken _value,
      $Res Function(_$NewAuthenticationToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationToken = null,
  }) {
    return _then(_$NewAuthenticationToken(
      null == authenticationToken
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
        (other.runtimeType == runtimeType &&
            other is _$NewAuthenticationToken &&
            (identical(other.authenticationToken, authenticationToken) ||
                other.authenticationToken == authenticationToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewAuthenticationTokenCopyWith<_$NewAuthenticationToken> get copyWith =>
      __$$NewAuthenticationTokenCopyWithImpl<_$NewAuthenticationToken>(
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? restoreSession,
    TResult? Function(String authenticationToken)? newAuthenticationToken,
    TResult? Function()? authenticationTokenLost,
  }) {
    return newAuthenticationToken?.call(authenticationToken);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestoreSession value)? restoreSession,
    TResult? Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult? Function(AuthenticationTokenLost value)? authenticationTokenLost,
  }) {
    return newAuthenticationToken?.call(this);
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
  const factory NewAuthenticationToken(final String authenticationToken) =
      _$NewAuthenticationToken;

  String get authenticationToken;
  @JsonKey(ignore: true)
  _$$NewAuthenticationTokenCopyWith<_$NewAuthenticationToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationTokenLostCopyWith<$Res> {
  factory _$$AuthenticationTokenLostCopyWith(_$AuthenticationTokenLost value,
          $Res Function(_$AuthenticationTokenLost) then) =
      __$$AuthenticationTokenLostCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationTokenLostCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$AuthenticationTokenLost>
    implements _$$AuthenticationTokenLostCopyWith<$Res> {
  __$$AuthenticationTokenLostCopyWithImpl(_$AuthenticationTokenLost _value,
      $Res Function(_$AuthenticationTokenLost) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationTokenLost);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? restoreSession,
    TResult? Function(String authenticationToken)? newAuthenticationToken,
    TResult? Function()? authenticationTokenLost,
  }) {
    return authenticationTokenLost?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestoreSession value)? restoreSession,
    TResult? Function(NewAuthenticationToken value)? newAuthenticationToken,
    TResult? Function(AuthenticationTokenLost value)? authenticationTokenLost,
  }) {
    return authenticationTokenLost?.call(this);
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
