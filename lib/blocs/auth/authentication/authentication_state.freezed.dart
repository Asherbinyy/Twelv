// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsVerification,
    TResult? Function(String authenticationToken)? tokenReceived,
    TResult? Function(AuthenticationError error, DateTime? occurredAt)? error,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SmsVerification value)? smsVerification,
    TResult? Function(TokenReceived value)? tokenReceived,
    TResult? Function(AuthenticationStateError value)? error,
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
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
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
    properties.add(DiagnosticsProperty('type', 'AuthenticationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsVerification,
    TResult? Function(String authenticationToken)? tokenReceived,
    TResult? Function(AuthenticationError error, DateTime? occurredAt)? error,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SmsVerification value)? smsVerification,
    TResult? Function(TokenReceived value)? tokenReceived,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return initial?.call(this);
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
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
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
    properties.add(DiagnosticsProperty('type', 'AuthenticationState.loading'));
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsVerification,
    TResult? Function(String authenticationToken)? tokenReceived,
    TResult? Function(AuthenticationError error, DateTime? occurredAt)? error,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SmsVerification value)? smsVerification,
    TResult? Function(TokenReceived value)? tokenReceived,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$SmsVerificationCopyWith<$Res> {
  factory _$$SmsVerificationCopyWith(
          _$SmsVerification value, $Res Function(_$SmsVerification) then) =
      __$$SmsVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmsVerificationCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SmsVerification>
    implements _$$SmsVerificationCopyWith<$Res> {
  __$$SmsVerificationCopyWithImpl(
      _$SmsVerification _value, $Res Function(_$SmsVerification) _then)
      : super(_value, _then);
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
    properties.add(
        DiagnosticsProperty('type', 'AuthenticationState.smsVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmsVerification);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsVerification,
    TResult? Function(String authenticationToken)? tokenReceived,
    TResult? Function(AuthenticationError error, DateTime? occurredAt)? error,
  }) {
    return smsVerification?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SmsVerification value)? smsVerification,
    TResult? Function(TokenReceived value)? tokenReceived,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return smsVerification?.call(this);
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
abstract class _$$TokenReceivedCopyWith<$Res> {
  factory _$$TokenReceivedCopyWith(
          _$TokenReceived value, $Res Function(_$TokenReceived) then) =
      __$$TokenReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({String authenticationToken});
}

/// @nodoc
class __$$TokenReceivedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$TokenReceived>
    implements _$$TokenReceivedCopyWith<$Res> {
  __$$TokenReceivedCopyWithImpl(
      _$TokenReceived _value, $Res Function(_$TokenReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationToken = null,
  }) {
    return _then(_$TokenReceived(
      authenticationToken: null == authenticationToken
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
        (other.runtimeType == runtimeType &&
            other is _$TokenReceived &&
            (identical(other.authenticationToken, authenticationToken) ||
                other.authenticationToken == authenticationToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenReceivedCopyWith<_$TokenReceived> get copyWith =>
      __$$TokenReceivedCopyWithImpl<_$TokenReceived>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsVerification,
    TResult? Function(String authenticationToken)? tokenReceived,
    TResult? Function(AuthenticationError error, DateTime? occurredAt)? error,
  }) {
    return tokenReceived?.call(authenticationToken);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SmsVerification value)? smsVerification,
    TResult? Function(TokenReceived value)? tokenReceived,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return tokenReceived?.call(this);
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
  const factory TokenReceived({required final String authenticationToken}) =
      _$TokenReceived;

  String get authenticationToken;
  @JsonKey(ignore: true)
  _$$TokenReceivedCopyWith<_$TokenReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationStateErrorCopyWith<$Res> {
  factory _$$AuthenticationStateErrorCopyWith(_$AuthenticationStateError value,
          $Res Function(_$AuthenticationStateError) then) =
      __$$AuthenticationStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationError error, DateTime? occurredAt});
}

/// @nodoc
class __$$AuthenticationStateErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateError>
    implements _$$AuthenticationStateErrorCopyWith<$Res> {
  __$$AuthenticationStateErrorCopyWithImpl(_$AuthenticationStateError _value,
      $Res Function(_$AuthenticationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? occurredAt = freezed,
  }) {
    return _then(_$AuthenticationStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthenticationError,
      occurredAt: freezed == occurredAt
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
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateError &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, occurredAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateErrorCopyWith<_$AuthenticationStateError>
      get copyWith =>
          __$$AuthenticationStateErrorCopyWithImpl<_$AuthenticationStateError>(
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsVerification,
    TResult? Function(String authenticationToken)? tokenReceived,
    TResult? Function(AuthenticationError error, DateTime? occurredAt)? error,
  }) {
    return error?.call(this.error, occurredAt);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SmsVerification value)? smsVerification,
    TResult? Function(TokenReceived value)? tokenReceived,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return error?.call(this);
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
  const factory AuthenticationStateError(final AuthenticationError error,
      {final DateTime? occurredAt}) = _$AuthenticationStateError;

  AuthenticationError get error;
  DateTime? get occurredAt;
  @JsonKey(ignore: true)
  _$$AuthenticationStateErrorCopyWith<_$AuthenticationStateError>
      get copyWith => throw _privateConstructorUsedError;
}
