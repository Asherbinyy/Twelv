// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_welcome_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginWelcomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberProvided,
    required TResult Function() facebookClicked,
    required TResult Function() appleSignInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberProvided,
    TResult? Function()? facebookClicked,
    TResult? Function()? appleSignInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberProvided,
    TResult Function()? facebookClicked,
    TResult Function()? appleSignInClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberProvided value) phoneNumberProvided,
    required TResult Function(FacebookClicked value) facebookClicked,
    required TResult Function(AppleSignInClicked value) appleSignInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult? Function(FacebookClicked value)? facebookClicked,
    TResult? Function(AppleSignInClicked value)? appleSignInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult Function(FacebookClicked value)? facebookClicked,
    TResult Function(AppleSignInClicked value)? appleSignInClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginWelcomeEventCopyWith<$Res> {
  factory $LoginWelcomeEventCopyWith(
          LoginWelcomeEvent value, $Res Function(LoginWelcomeEvent) then) =
      _$LoginWelcomeEventCopyWithImpl<$Res, LoginWelcomeEvent>;
}

/// @nodoc
class _$LoginWelcomeEventCopyWithImpl<$Res, $Val extends LoginWelcomeEvent>
    implements $LoginWelcomeEventCopyWith<$Res> {
  _$LoginWelcomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhoneNumberProvidedCopyWith<$Res> {
  factory _$$PhoneNumberProvidedCopyWith(_$PhoneNumberProvided value,
          $Res Function(_$PhoneNumberProvided) then) =
      __$$PhoneNumberProvidedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberProvidedCopyWithImpl<$Res>
    extends _$LoginWelcomeEventCopyWithImpl<$Res, _$PhoneNumberProvided>
    implements _$$PhoneNumberProvidedCopyWith<$Res> {
  __$$PhoneNumberProvidedCopyWithImpl(
      _$PhoneNumberProvided _value, $Res Function(_$PhoneNumberProvided) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberProvided(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberProvided implements PhoneNumberProvided {
  const _$PhoneNumberProvided({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginWelcomeEvent.phoneNumberProvided(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberProvided &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberProvidedCopyWith<_$PhoneNumberProvided> get copyWith =>
      __$$PhoneNumberProvidedCopyWithImpl<_$PhoneNumberProvided>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberProvided,
    required TResult Function() facebookClicked,
    required TResult Function() appleSignInClicked,
  }) {
    return phoneNumberProvided(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberProvided,
    TResult? Function()? facebookClicked,
    TResult? Function()? appleSignInClicked,
  }) {
    return phoneNumberProvided?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberProvided,
    TResult Function()? facebookClicked,
    TResult Function()? appleSignInClicked,
    required TResult orElse(),
  }) {
    if (phoneNumberProvided != null) {
      return phoneNumberProvided(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberProvided value) phoneNumberProvided,
    required TResult Function(FacebookClicked value) facebookClicked,
    required TResult Function(AppleSignInClicked value) appleSignInClicked,
  }) {
    return phoneNumberProvided(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult? Function(FacebookClicked value)? facebookClicked,
    TResult? Function(AppleSignInClicked value)? appleSignInClicked,
  }) {
    return phoneNumberProvided?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult Function(FacebookClicked value)? facebookClicked,
    TResult Function(AppleSignInClicked value)? appleSignInClicked,
    required TResult orElse(),
  }) {
    if (phoneNumberProvided != null) {
      return phoneNumberProvided(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberProvided implements LoginWelcomeEvent {
  const factory PhoneNumberProvided({required final String phoneNumber}) =
      _$PhoneNumberProvided;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberProvidedCopyWith<_$PhoneNumberProvided> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FacebookClickedCopyWith<$Res> {
  factory _$$FacebookClickedCopyWith(
          _$FacebookClicked value, $Res Function(_$FacebookClicked) then) =
      __$$FacebookClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FacebookClickedCopyWithImpl<$Res>
    extends _$LoginWelcomeEventCopyWithImpl<$Res, _$FacebookClicked>
    implements _$$FacebookClickedCopyWith<$Res> {
  __$$FacebookClickedCopyWithImpl(
      _$FacebookClicked _value, $Res Function(_$FacebookClicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FacebookClicked implements FacebookClicked {
  const _$FacebookClicked();

  @override
  String toString() {
    return 'LoginWelcomeEvent.facebookClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FacebookClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberProvided,
    required TResult Function() facebookClicked,
    required TResult Function() appleSignInClicked,
  }) {
    return facebookClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberProvided,
    TResult? Function()? facebookClicked,
    TResult? Function()? appleSignInClicked,
  }) {
    return facebookClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberProvided,
    TResult Function()? facebookClicked,
    TResult Function()? appleSignInClicked,
    required TResult orElse(),
  }) {
    if (facebookClicked != null) {
      return facebookClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberProvided value) phoneNumberProvided,
    required TResult Function(FacebookClicked value) facebookClicked,
    required TResult Function(AppleSignInClicked value) appleSignInClicked,
  }) {
    return facebookClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult? Function(FacebookClicked value)? facebookClicked,
    TResult? Function(AppleSignInClicked value)? appleSignInClicked,
  }) {
    return facebookClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult Function(FacebookClicked value)? facebookClicked,
    TResult Function(AppleSignInClicked value)? appleSignInClicked,
    required TResult orElse(),
  }) {
    if (facebookClicked != null) {
      return facebookClicked(this);
    }
    return orElse();
  }
}

abstract class FacebookClicked implements LoginWelcomeEvent {
  const factory FacebookClicked() = _$FacebookClicked;
}

/// @nodoc
abstract class _$$AppleSignInClickedCopyWith<$Res> {
  factory _$$AppleSignInClickedCopyWith(_$AppleSignInClicked value,
          $Res Function(_$AppleSignInClicked) then) =
      __$$AppleSignInClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppleSignInClickedCopyWithImpl<$Res>
    extends _$LoginWelcomeEventCopyWithImpl<$Res, _$AppleSignInClicked>
    implements _$$AppleSignInClickedCopyWith<$Res> {
  __$$AppleSignInClickedCopyWithImpl(
      _$AppleSignInClicked _value, $Res Function(_$AppleSignInClicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppleSignInClicked implements AppleSignInClicked {
  const _$AppleSignInClicked();

  @override
  String toString() {
    return 'LoginWelcomeEvent.appleSignInClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppleSignInClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberProvided,
    required TResult Function() facebookClicked,
    required TResult Function() appleSignInClicked,
  }) {
    return appleSignInClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberProvided,
    TResult? Function()? facebookClicked,
    TResult? Function()? appleSignInClicked,
  }) {
    return appleSignInClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberProvided,
    TResult Function()? facebookClicked,
    TResult Function()? appleSignInClicked,
    required TResult orElse(),
  }) {
    if (appleSignInClicked != null) {
      return appleSignInClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberProvided value) phoneNumberProvided,
    required TResult Function(FacebookClicked value) facebookClicked,
    required TResult Function(AppleSignInClicked value) appleSignInClicked,
  }) {
    return appleSignInClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult? Function(FacebookClicked value)? facebookClicked,
    TResult? Function(AppleSignInClicked value)? appleSignInClicked,
  }) {
    return appleSignInClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberProvided value)? phoneNumberProvided,
    TResult Function(FacebookClicked value)? facebookClicked,
    TResult Function(AppleSignInClicked value)? appleSignInClicked,
    required TResult orElse(),
  }) {
    if (appleSignInClicked != null) {
      return appleSignInClicked(this);
    }
    return orElse();
  }
}

abstract class AppleSignInClicked implements LoginWelcomeEvent {
  const factory AppleSignInClicked() = _$AppleSignInClicked;
}
