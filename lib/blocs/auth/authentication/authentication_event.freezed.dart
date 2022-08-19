// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  ByPhone authenticateByPhone({required String phoneNumber}) {
    return ByPhone(
      phoneNumber: phoneNumber,
    );
  }

  ByFacebook authenticateByFacebook() {
    return const ByFacebook();
  }

  ByApple authenticateByApple() {
    return const ByApple();
  }

  VerifyPhoneNum verifyPhoneNum() {
    return const VerifyPhoneNum();
  }

  ConfirmSmsCode confirmSmsCode({required String smsCode}) {
    return ConfirmSmsCode(
      smsCode: smsCode,
    );
  }

  ResendSmsCode resendSmsCode() {
    return const ResendSmsCode();
  }

  AuthenticationCompleted authenticationCompleted(
      {required String authenticationToken}) {
    return AuthenticationCompleted(
      authenticationToken: authenticationToken,
    );
  }

  SignOut signOut() {
    return const SignOut();
  }

  ReAuthenticate reauthenticate() {
    return const ReAuthenticate();
  }

  Canceled canceled() {
    return const Canceled();
  }

  Error error(AuthenticationError error) {
    return Error(
      error,
    );
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

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
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $ByPhoneCopyWith<$Res> {
  factory $ByPhoneCopyWith(ByPhone value, $Res Function(ByPhone) then) =
      _$ByPhoneCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$ByPhoneCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ByPhoneCopyWith<$Res> {
  _$ByPhoneCopyWithImpl(ByPhone _value, $Res Function(ByPhone) _then)
      : super(_value, (v) => _then(v as ByPhone));

  @override
  ByPhone get _value => super._value as ByPhone;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(ByPhone(
      phoneNumber: phoneNumber == freezed
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
        (other is ByPhone &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $ByPhoneCopyWith<ByPhone> get copyWith =>
      _$ByPhoneCopyWithImpl<ByPhone>(this, _$identity);

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
  const factory ByPhone({required String phoneNumber}) = _$ByPhone;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ByPhoneCopyWith<ByPhone> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ByFacebookCopyWith<$Res> {
  factory $ByFacebookCopyWith(
          ByFacebook value, $Res Function(ByFacebook) then) =
      _$ByFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class _$ByFacebookCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ByFacebookCopyWith<$Res> {
  _$ByFacebookCopyWithImpl(ByFacebook _value, $Res Function(ByFacebook) _then)
      : super(_value, (v) => _then(v as ByFacebook));

  @override
  ByFacebook get _value => super._value as ByFacebook;
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
    return identical(this, other) || (other is ByFacebook);
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
abstract class $ByAppleCopyWith<$Res> {
  factory $ByAppleCopyWith(ByApple value, $Res Function(ByApple) then) =
      _$ByAppleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ByAppleCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ByAppleCopyWith<$Res> {
  _$ByAppleCopyWithImpl(ByApple _value, $Res Function(ByApple) _then)
      : super(_value, (v) => _then(v as ByApple));

  @override
  ByApple get _value => super._value as ByApple;
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
    return identical(this, other) || (other is ByApple);
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
abstract class $VerifyPhoneNumCopyWith<$Res> {
  factory $VerifyPhoneNumCopyWith(
          VerifyPhoneNum value, $Res Function(VerifyPhoneNum) then) =
      _$VerifyPhoneNumCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyPhoneNumCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $VerifyPhoneNumCopyWith<$Res> {
  _$VerifyPhoneNumCopyWithImpl(
      VerifyPhoneNum _value, $Res Function(VerifyPhoneNum) _then)
      : super(_value, (v) => _then(v as VerifyPhoneNum));

  @override
  VerifyPhoneNum get _value => super._value as VerifyPhoneNum;
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
    return identical(this, other) || (other is VerifyPhoneNum);
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
abstract class $ConfirmSmsCodeCopyWith<$Res> {
  factory $ConfirmSmsCodeCopyWith(
          ConfirmSmsCode value, $Res Function(ConfirmSmsCode) then) =
      _$ConfirmSmsCodeCopyWithImpl<$Res>;
  $Res call({String smsCode});
}

/// @nodoc
class _$ConfirmSmsCodeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ConfirmSmsCodeCopyWith<$Res> {
  _$ConfirmSmsCodeCopyWithImpl(
      ConfirmSmsCode _value, $Res Function(ConfirmSmsCode) _then)
      : super(_value, (v) => _then(v as ConfirmSmsCode));

  @override
  ConfirmSmsCode get _value => super._value as ConfirmSmsCode;

  @override
  $Res call({
    Object? smsCode = freezed,
  }) {
    return _then(ConfirmSmsCode(
      smsCode: smsCode == freezed
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
        (other is ConfirmSmsCode &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality().equals(other.smsCode, smsCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(smsCode);

  @JsonKey(ignore: true)
  @override
  $ConfirmSmsCodeCopyWith<ConfirmSmsCode> get copyWith =>
      _$ConfirmSmsCodeCopyWithImpl<ConfirmSmsCode>(this, _$identity);

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
  const factory ConfirmSmsCode({required String smsCode}) = _$ConfirmSmsCode;

  String get smsCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmSmsCodeCopyWith<ConfirmSmsCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendSmsCodeCopyWith<$Res> {
  factory $ResendSmsCodeCopyWith(
          ResendSmsCode value, $Res Function(ResendSmsCode) then) =
      _$ResendSmsCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendSmsCodeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ResendSmsCodeCopyWith<$Res> {
  _$ResendSmsCodeCopyWithImpl(
      ResendSmsCode _value, $Res Function(ResendSmsCode) _then)
      : super(_value, (v) => _then(v as ResendSmsCode));

  @override
  ResendSmsCode get _value => super._value as ResendSmsCode;
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
    return identical(this, other) || (other is ResendSmsCode);
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
abstract class $AuthenticationCompletedCopyWith<$Res> {
  factory $AuthenticationCompletedCopyWith(AuthenticationCompleted value,
          $Res Function(AuthenticationCompleted) then) =
      _$AuthenticationCompletedCopyWithImpl<$Res>;
  $Res call({String authenticationToken});
}

/// @nodoc
class _$AuthenticationCompletedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationCompletedCopyWith<$Res> {
  _$AuthenticationCompletedCopyWithImpl(AuthenticationCompleted _value,
      $Res Function(AuthenticationCompleted) _then)
      : super(_value, (v) => _then(v as AuthenticationCompleted));

  @override
  AuthenticationCompleted get _value => super._value as AuthenticationCompleted;

  @override
  $Res call({
    Object? authenticationToken = freezed,
  }) {
    return _then(AuthenticationCompleted(
      authenticationToken: authenticationToken == freezed
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
        (other is AuthenticationCompleted &&
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
  $AuthenticationCompletedCopyWith<AuthenticationCompleted> get copyWith =>
      _$AuthenticationCompletedCopyWithImpl<AuthenticationCompleted>(
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
  const factory AuthenticationCompleted({required String authenticationToken}) =
      _$AuthenticationCompleted;

  String get authenticationToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationCompletedCopyWith<AuthenticationCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
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
    return identical(this, other) || (other is SignOut);
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
abstract class $ReAuthenticateCopyWith<$Res> {
  factory $ReAuthenticateCopyWith(
          ReAuthenticate value, $Res Function(ReAuthenticate) then) =
      _$ReAuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReAuthenticateCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ReAuthenticateCopyWith<$Res> {
  _$ReAuthenticateCopyWithImpl(
      ReAuthenticate _value, $Res Function(ReAuthenticate) _then)
      : super(_value, (v) => _then(v as ReAuthenticate));

  @override
  ReAuthenticate get _value => super._value as ReAuthenticate;
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
    return identical(this, other) || (other is ReAuthenticate);
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
abstract class $CanceledCopyWith<$Res> {
  factory $CanceledCopyWith(Canceled value, $Res Function(Canceled) then) =
      _$CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $CanceledCopyWith<$Res> {
  _$CanceledCopyWithImpl(Canceled _value, $Res Function(Canceled) _then)
      : super(_value, (v) => _then(v as Canceled));

  @override
  Canceled get _value => super._value as Canceled;
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
    return identical(this, other) || (other is Canceled);
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
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({AuthenticationError error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error == freezed
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
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

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
  const factory Error(AuthenticationError error) = _$Error;

  AuthenticationError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
