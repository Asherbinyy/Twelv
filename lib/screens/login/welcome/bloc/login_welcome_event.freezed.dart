// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_welcome_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginWelcomeEventTearOff {
  const _$LoginWelcomeEventTearOff();

  PhoneNumberProvided phoneNumberProvided({required String phoneNumber}) {
    return PhoneNumberProvided(
      phoneNumber: phoneNumber,
    );
  }

  FacebookClicked facebookClicked() {
    return const FacebookClicked();
  }

  AppleSignInClicked appleSignInClicked() {
    return const AppleSignInClicked();
  }
}

/// @nodoc
const $LoginWelcomeEvent = _$LoginWelcomeEventTearOff();

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
      _$LoginWelcomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWelcomeEventCopyWithImpl<$Res>
    implements $LoginWelcomeEventCopyWith<$Res> {
  _$LoginWelcomeEventCopyWithImpl(this._value, this._then);

  final LoginWelcomeEvent _value;
  // ignore: unused_field
  final $Res Function(LoginWelcomeEvent) _then;
}

/// @nodoc
abstract class $PhoneNumberProvidedCopyWith<$Res> {
  factory $PhoneNumberProvidedCopyWith(
          PhoneNumberProvided value, $Res Function(PhoneNumberProvided) then) =
      _$PhoneNumberProvidedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberProvidedCopyWithImpl<$Res>
    extends _$LoginWelcomeEventCopyWithImpl<$Res>
    implements $PhoneNumberProvidedCopyWith<$Res> {
  _$PhoneNumberProvidedCopyWithImpl(
      PhoneNumberProvided _value, $Res Function(PhoneNumberProvided) _then)
      : super(_value, (v) => _then(v as PhoneNumberProvided));

  @override
  PhoneNumberProvided get _value => super._value as PhoneNumberProvided;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(PhoneNumberProvided(
      phoneNumber: phoneNumber == freezed
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
        (other is PhoneNumberProvided &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $PhoneNumberProvidedCopyWith<PhoneNumberProvided> get copyWith =>
      _$PhoneNumberProvidedCopyWithImpl<PhoneNumberProvided>(this, _$identity);

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
  const factory PhoneNumberProvided({required String phoneNumber}) =
      _$PhoneNumberProvided;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneNumberProvidedCopyWith<PhoneNumberProvided> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacebookClickedCopyWith<$Res> {
  factory $FacebookClickedCopyWith(
          FacebookClicked value, $Res Function(FacebookClicked) then) =
      _$FacebookClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FacebookClickedCopyWithImpl<$Res>
    extends _$LoginWelcomeEventCopyWithImpl<$Res>
    implements $FacebookClickedCopyWith<$Res> {
  _$FacebookClickedCopyWithImpl(
      FacebookClicked _value, $Res Function(FacebookClicked) _then)
      : super(_value, (v) => _then(v as FacebookClicked));

  @override
  FacebookClicked get _value => super._value as FacebookClicked;
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
    return identical(this, other) || (other is FacebookClicked);
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
abstract class $AppleSignInClickedCopyWith<$Res> {
  factory $AppleSignInClickedCopyWith(
          AppleSignInClicked value, $Res Function(AppleSignInClicked) then) =
      _$AppleSignInClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppleSignInClickedCopyWithImpl<$Res>
    extends _$LoginWelcomeEventCopyWithImpl<$Res>
    implements $AppleSignInClickedCopyWith<$Res> {
  _$AppleSignInClickedCopyWithImpl(
      AppleSignInClicked _value, $Res Function(AppleSignInClicked) _then)
      : super(_value, (v) => _then(v as AppleSignInClicked));

  @override
  AppleSignInClicked get _value => super._value as AppleSignInClicked;
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
    return identical(this, other) || (other is AppleSignInClicked);
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
