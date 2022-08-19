// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'onboarding_birth_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardingBirthDataEventTearOff {
  const _$OnboardingBirthDataEventTearOff();

  BirthDataEntered birthDataEntered() {
    return const BirthDataEntered();
  }
}

/// @nodoc
const $OnboardingBirthDataEvent = _$OnboardingBirthDataEventTearOff();

/// @nodoc
mixin _$OnboardingBirthDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() birthDataEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? birthDataEntered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirthDataEntered value) birthDataEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirthDataEntered value)? birthDataEntered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingBirthDataEventCopyWith<$Res> {
  factory $OnboardingBirthDataEventCopyWith(OnboardingBirthDataEvent value,
          $Res Function(OnboardingBirthDataEvent) then) =
      _$OnboardingBirthDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingBirthDataEventCopyWithImpl<$Res>
    implements $OnboardingBirthDataEventCopyWith<$Res> {
  _$OnboardingBirthDataEventCopyWithImpl(this._value, this._then);

  final OnboardingBirthDataEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingBirthDataEvent) _then;
}

/// @nodoc
abstract class $BirthDataEnteredCopyWith<$Res> {
  factory $BirthDataEnteredCopyWith(
          BirthDataEntered value, $Res Function(BirthDataEntered) then) =
      _$BirthDataEnteredCopyWithImpl<$Res>;
}

/// @nodoc
class _$BirthDataEnteredCopyWithImpl<$Res>
    extends _$OnboardingBirthDataEventCopyWithImpl<$Res>
    implements $BirthDataEnteredCopyWith<$Res> {
  _$BirthDataEnteredCopyWithImpl(
      BirthDataEntered _value, $Res Function(BirthDataEntered) _then)
      : super(_value, (v) => _then(v as BirthDataEntered));

  @override
  BirthDataEntered get _value => super._value as BirthDataEntered;
}

/// @nodoc
class _$BirthDataEntered implements BirthDataEntered {
  const _$BirthDataEntered();

  @override
  String toString() {
    return 'OnboardingBirthDataEvent.birthDataEntered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BirthDataEntered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() birthDataEntered,
  }) {
    return birthDataEntered();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? birthDataEntered,
    required TResult orElse(),
  }) {
    if (birthDataEntered != null) {
      return birthDataEntered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirthDataEntered value) birthDataEntered,
  }) {
    return birthDataEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirthDataEntered value)? birthDataEntered,
    required TResult orElse(),
  }) {
    if (birthDataEntered != null) {
      return birthDataEntered(this);
    }
    return orElse();
  }
}

abstract class BirthDataEntered implements OnboardingBirthDataEvent {
  const factory BirthDataEntered() = _$BirthDataEntered;
}
