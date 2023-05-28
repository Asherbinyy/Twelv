// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_birth_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingBirthDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() birthDataEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? birthDataEntered,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirthDataEntered value)? birthDataEntered,
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
      _$OnboardingBirthDataEventCopyWithImpl<$Res, OnboardingBirthDataEvent>;
}

/// @nodoc
class _$OnboardingBirthDataEventCopyWithImpl<$Res,
        $Val extends OnboardingBirthDataEvent>
    implements $OnboardingBirthDataEventCopyWith<$Res> {
  _$OnboardingBirthDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BirthDataEnteredCopyWith<$Res> {
  factory _$$BirthDataEnteredCopyWith(
          _$BirthDataEntered value, $Res Function(_$BirthDataEntered) then) =
      __$$BirthDataEnteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirthDataEnteredCopyWithImpl<$Res>
    extends _$OnboardingBirthDataEventCopyWithImpl<$Res, _$BirthDataEntered>
    implements _$$BirthDataEnteredCopyWith<$Res> {
  __$$BirthDataEnteredCopyWithImpl(
      _$BirthDataEntered _value, $Res Function(_$BirthDataEntered) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirthDataEntered);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? birthDataEntered,
  }) {
    return birthDataEntered?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirthDataEntered value)? birthDataEntered,
  }) {
    return birthDataEntered?.call(this);
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
