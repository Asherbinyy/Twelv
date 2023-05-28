// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ByPhoneCopyWith<$Res> {
  factory _$$ByPhoneCopyWith(_$ByPhone value, $Res Function(_$ByPhone) then) =
      __$$ByPhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$ByPhoneCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ByPhone>
    implements _$$ByPhoneCopyWith<$Res> {
  __$$ByPhoneCopyWithImpl(_$ByPhone _value, $Res Function(_$ByPhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$ByPhone(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ByPhone implements ByPhone {
  const _$ByPhone({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthenticationEvent.authenticateByPhone(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ByPhone &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ByPhoneCopyWith<_$ByPhone> get copyWith =>
      __$$ByPhoneCopyWithImpl<_$ByPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return authenticateByPhone(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return authenticateByPhone?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (authenticateByPhone != null) {
      return authenticateByPhone(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return authenticateByPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return authenticateByPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticateByPhone != null) {
      return authenticateByPhone(this);
    }
    return orElse();
  }
}

abstract class ByPhone implements AuthenticationEvent {
  const factory ByPhone({required final String phoneNumber}) = _$ByPhone;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$ByPhoneCopyWith<_$ByPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ByFacebookCopyWith<$Res> {
  factory _$$ByFacebookCopyWith(
          _$ByFacebook value, $Res Function(_$ByFacebook) then) =
      __$$ByFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ByFacebookCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ByFacebook>
    implements _$$ByFacebookCopyWith<$Res> {
  __$$ByFacebookCopyWithImpl(
      _$ByFacebook _value, $Res Function(_$ByFacebook) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ByFacebook implements ByFacebook {
  const _$ByFacebook();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticateByFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ByFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return authenticateByFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return authenticateByFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (authenticateByFacebook != null) {
      return authenticateByFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return authenticateByFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return authenticateByFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticateByFacebook != null) {
      return authenticateByFacebook(this);
    }
    return orElse();
  }
}

abstract class ByFacebook implements AuthenticationEvent {
  const factory ByFacebook() = _$ByFacebook;
}

/// @nodoc
abstract class _$$ByAppleCopyWith<$Res> {
  factory _$$ByAppleCopyWith(_$ByApple value, $Res Function(_$ByApple) then) =
      __$$ByAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ByAppleCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ByApple>
    implements _$$ByAppleCopyWith<$Res> {
  __$$ByAppleCopyWithImpl(_$ByApple _value, $Res Function(_$ByApple) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ByApple implements ByApple {
  const _$ByApple();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticateByApple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ByApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return authenticateByApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return authenticateByApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (authenticateByApple != null) {
      return authenticateByApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return authenticateByApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return authenticateByApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticateByApple != null) {
      return authenticateByApple(this);
    }
    return orElse();
  }
}

abstract class ByApple implements AuthenticationEvent {
  const factory ByApple() = _$ByApple;
}

/// @nodoc
abstract class _$$VerifyPhoneNumCopyWith<$Res> {
  factory _$$VerifyPhoneNumCopyWith(
          _$VerifyPhoneNum value, $Res Function(_$VerifyPhoneNum) then) =
      __$$VerifyPhoneNumCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPhoneNumCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$VerifyPhoneNum>
    implements _$$VerifyPhoneNumCopyWith<$Res> {
  __$$VerifyPhoneNumCopyWithImpl(
      _$VerifyPhoneNum _value, $Res Function(_$VerifyPhoneNum) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyPhoneNum implements VerifyPhoneNum {
  const _$VerifyPhoneNum();

  @override
  String toString() {
    return 'AuthenticationEvent.verifyPhoneNum()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyPhoneNum);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return verifyPhoneNum();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return verifyPhoneNum?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (verifyPhoneNum != null) {
      return verifyPhoneNum();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return verifyPhoneNum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return verifyPhoneNum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (verifyPhoneNum != null) {
      return verifyPhoneNum(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneNum implements AuthenticationEvent {
  const factory VerifyPhoneNum() = _$VerifyPhoneNum;
}

/// @nodoc
abstract class _$$ConfirmSmsCodeCopyWith<$Res> {
  factory _$$ConfirmSmsCodeCopyWith(
          _$ConfirmSmsCode value, $Res Function(_$ConfirmSmsCode) then) =
      __$$ConfirmSmsCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String smsCode});
}

/// @nodoc
class __$$ConfirmSmsCodeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ConfirmSmsCode>
    implements _$$ConfirmSmsCodeCopyWith<$Res> {
  __$$ConfirmSmsCodeCopyWithImpl(
      _$ConfirmSmsCode _value, $Res Function(_$ConfirmSmsCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
  }) {
    return _then(_$ConfirmSmsCode(
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmSmsCode implements ConfirmSmsCode {
  const _$ConfirmSmsCode({required this.smsCode});

  @override
  final String smsCode;

  @override
  String toString() {
    return 'AuthenticationEvent.confirmSmsCode(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmSmsCode &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smsCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmSmsCodeCopyWith<_$ConfirmSmsCode> get copyWith =>
      __$$ConfirmSmsCodeCopyWithImpl<_$ConfirmSmsCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return confirmSmsCode(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return confirmSmsCode?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (confirmSmsCode != null) {
      return confirmSmsCode(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return confirmSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return confirmSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (confirmSmsCode != null) {
      return confirmSmsCode(this);
    }
    return orElse();
  }
}

abstract class ConfirmSmsCode implements AuthenticationEvent {
  const factory ConfirmSmsCode({required final String smsCode}) =
      _$ConfirmSmsCode;

  String get smsCode;
  @JsonKey(ignore: true)
  _$$ConfirmSmsCodeCopyWith<_$ConfirmSmsCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendSmsCodeCopyWith<$Res> {
  factory _$$ResendSmsCodeCopyWith(
          _$ResendSmsCode value, $Res Function(_$ResendSmsCode) then) =
      __$$ResendSmsCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendSmsCodeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ResendSmsCode>
    implements _$$ResendSmsCodeCopyWith<$Res> {
  __$$ResendSmsCodeCopyWithImpl(
      _$ResendSmsCode _value, $Res Function(_$ResendSmsCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendSmsCode implements ResendSmsCode {
  const _$ResendSmsCode();

  @override
  String toString() {
    return 'AuthenticationEvent.resendSmsCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendSmsCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return resendSmsCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return resendSmsCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (resendSmsCode != null) {
      return resendSmsCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return resendSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return resendSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (resendSmsCode != null) {
      return resendSmsCode(this);
    }
    return orElse();
  }
}

abstract class ResendSmsCode implements AuthenticationEvent {
  const factory ResendSmsCode() = _$ResendSmsCode;
}

/// @nodoc
abstract class _$$AuthenticationCompletedCopyWith<$Res> {
  factory _$$AuthenticationCompletedCopyWith(_$AuthenticationCompleted value,
          $Res Function(_$AuthenticationCompleted) then) =
      __$$AuthenticationCompletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String authenticationToken});
}

/// @nodoc
class __$$AuthenticationCompletedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticationCompleted>
    implements _$$AuthenticationCompletedCopyWith<$Res> {
  __$$AuthenticationCompletedCopyWithImpl(_$AuthenticationCompleted _value,
      $Res Function(_$AuthenticationCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationToken = null,
  }) {
    return _then(_$AuthenticationCompleted(
      authenticationToken: null == authenticationToken
          ? _value.authenticationToken
          : authenticationToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationCompleted implements AuthenticationCompleted {
  const _$AuthenticationCompleted({required this.authenticationToken});

  @override
  final String authenticationToken;

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationCompleted(authenticationToken: $authenticationToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationCompleted &&
            (identical(other.authenticationToken, authenticationToken) ||
                other.authenticationToken == authenticationToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationCompletedCopyWith<_$AuthenticationCompleted> get copyWith =>
      __$$AuthenticationCompletedCopyWithImpl<_$AuthenticationCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return authenticationCompleted(authenticationToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return authenticationCompleted?.call(authenticationToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (authenticationCompleted != null) {
      return authenticationCompleted(authenticationToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return authenticationCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return authenticationCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticationCompleted != null) {
      return authenticationCompleted(this);
    }
    return orElse();
  }
}

abstract class AuthenticationCompleted implements AuthenticationEvent {
  const factory AuthenticationCompleted(
      {required final String authenticationToken}) = _$AuthenticationCompleted;

  String get authenticationToken;
  @JsonKey(ignore: true)
  _$$AuthenticationCompletedCopyWith<_$AuthenticationCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthenticationEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
abstract class _$$ReAuthenticateCopyWith<$Res> {
  factory _$$ReAuthenticateCopyWith(
          _$ReAuthenticate value, $Res Function(_$ReAuthenticate) then) =
      __$$ReAuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReAuthenticateCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ReAuthenticate>
    implements _$$ReAuthenticateCopyWith<$Res> {
  __$$ReAuthenticateCopyWithImpl(
      _$ReAuthenticate _value, $Res Function(_$ReAuthenticate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReAuthenticate implements ReAuthenticate {
  const _$ReAuthenticate();

  @override
  String toString() {
    return 'AuthenticationEvent.reauthenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReAuthenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return reauthenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return reauthenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
    required TResult orElse(),
  }) {
    if (reauthenticate != null) {
      return reauthenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return reauthenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return reauthenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (reauthenticate != null) {
      return reauthenticate(this);
    }
    return orElse();
  }
}

abstract class ReAuthenticate implements AuthenticationEvent {
  const factory ReAuthenticate() = _$ReAuthenticate;
}

/// @nodoc
abstract class _$$CanceledCopyWith<$Res> {
  factory _$$CanceledCopyWith(
          _$Canceled value, $Res Function(_$Canceled) then) =
      __$$CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanceledCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$Canceled>
    implements _$$CanceledCopyWith<$Res> {
  __$$CanceledCopyWithImpl(_$Canceled _value, $Res Function(_$Canceled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Canceled implements Canceled {
  const _$Canceled();

  @override
  String toString() {
    return 'AuthenticationEvent.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
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
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class Canceled implements AuthenticationEvent {
  const factory Canceled() = _$Canceled;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationError error});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthenticationError,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error);

  @override
  final AuthenticationError error;

  @override
  String toString() {
    return 'AuthenticationEvent.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) authenticateByPhone,
    required TResult Function() authenticateByFacebook,
    required TResult Function() authenticateByApple,
    required TResult Function() verifyPhoneNum,
    required TResult Function(String smsCode) confirmSmsCode,
    required TResult Function() resendSmsCode,
    required TResult Function(String authenticationToken)
        authenticationCompleted,
    required TResult Function() signOut,
    required TResult Function() reauthenticate,
    required TResult Function() canceled,
    required TResult Function(AuthenticationError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? authenticateByPhone,
    TResult? Function()? authenticateByFacebook,
    TResult? Function()? authenticateByApple,
    TResult? Function()? verifyPhoneNum,
    TResult? Function(String smsCode)? confirmSmsCode,
    TResult? Function()? resendSmsCode,
    TResult? Function(String authenticationToken)? authenticationCompleted,
    TResult? Function()? signOut,
    TResult? Function()? reauthenticate,
    TResult? Function()? canceled,
    TResult? Function(AuthenticationError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? authenticateByPhone,
    TResult Function()? authenticateByFacebook,
    TResult Function()? authenticateByApple,
    TResult Function()? verifyPhoneNum,
    TResult Function(String smsCode)? confirmSmsCode,
    TResult Function()? resendSmsCode,
    TResult Function(String authenticationToken)? authenticationCompleted,
    TResult Function()? signOut,
    TResult Function()? reauthenticate,
    TResult Function()? canceled,
    TResult Function(AuthenticationError error)? error,
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
    required TResult Function(ByPhone value) authenticateByPhone,
    required TResult Function(ByFacebook value) authenticateByFacebook,
    required TResult Function(ByApple value) authenticateByApple,
    required TResult Function(VerifyPhoneNum value) verifyPhoneNum,
    required TResult Function(ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(ResendSmsCode value) resendSmsCode,
    required TResult Function(AuthenticationCompleted value)
        authenticationCompleted,
    required TResult Function(SignOut value) signOut,
    required TResult Function(ReAuthenticate value) reauthenticate,
    required TResult Function(Canceled value) canceled,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ByPhone value)? authenticateByPhone,
    TResult? Function(ByFacebook value)? authenticateByFacebook,
    TResult? Function(ByApple value)? authenticateByApple,
    TResult? Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult? Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult? Function(ResendSmsCode value)? resendSmsCode,
    TResult? Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(ReAuthenticate value)? reauthenticate,
    TResult? Function(Canceled value)? canceled,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ByPhone value)? authenticateByPhone,
    TResult Function(ByFacebook value)? authenticateByFacebook,
    TResult Function(ByApple value)? authenticateByApple,
    TResult Function(VerifyPhoneNum value)? verifyPhoneNum,
    TResult Function(ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(ResendSmsCode value)? resendSmsCode,
    TResult Function(AuthenticationCompleted value)? authenticationCompleted,
    TResult Function(SignOut value)? signOut,
    TResult Function(ReAuthenticate value)? reauthenticate,
    TResult Function(Canceled value)? canceled,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthenticationEvent {
  const factory Error(final AuthenticationError error) = _$Error;

  AuthenticationError get error;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
