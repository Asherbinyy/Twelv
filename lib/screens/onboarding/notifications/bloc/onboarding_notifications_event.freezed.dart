// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingNotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activated,
    required TResult Function() skipped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activated,
    TResult? Function()? skipped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activated,
    TResult Function()? skipped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Activated value) activated,
    required TResult Function(Skipped value) skipped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Activated value)? activated,
    TResult? Function(Skipped value)? skipped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Activated value)? activated,
    TResult Function(Skipped value)? skipped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingNotificationsEventCopyWith<$Res> {
  factory $OnboardingNotificationsEventCopyWith(
          OnboardingNotificationsEvent value,
          $Res Function(OnboardingNotificationsEvent) then) =
      _$OnboardingNotificationsEventCopyWithImpl<$Res,
          OnboardingNotificationsEvent>;
}

/// @nodoc
class _$OnboardingNotificationsEventCopyWithImpl<$Res,
        $Val extends OnboardingNotificationsEvent>
    implements $OnboardingNotificationsEventCopyWith<$Res> {
  _$OnboardingNotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActivatedCopyWith<$Res> {
  factory _$$ActivatedCopyWith(
          _$Activated value, $Res Function(_$Activated) then) =
      __$$ActivatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivatedCopyWithImpl<$Res>
    extends _$OnboardingNotificationsEventCopyWithImpl<$Res, _$Activated>
    implements _$$ActivatedCopyWith<$Res> {
  __$$ActivatedCopyWithImpl(
      _$Activated _value, $Res Function(_$Activated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Activated implements Activated {
  const _$Activated();

  @override
  String toString() {
    return 'OnboardingNotificationsEvent.activated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Activated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activated,
    required TResult Function() skipped,
  }) {
    return activated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activated,
    TResult? Function()? skipped,
  }) {
    return activated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activated,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (activated != null) {
      return activated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Activated value) activated,
    required TResult Function(Skipped value) skipped,
  }) {
    return activated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Activated value)? activated,
    TResult? Function(Skipped value)? skipped,
  }) {
    return activated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Activated value)? activated,
    TResult Function(Skipped value)? skipped,
    required TResult orElse(),
  }) {
    if (activated != null) {
      return activated(this);
    }
    return orElse();
  }
}

abstract class Activated implements OnboardingNotificationsEvent {
  const factory Activated() = _$Activated;
}

/// @nodoc
abstract class _$$SkippedCopyWith<$Res> {
  factory _$$SkippedCopyWith(_$Skipped value, $Res Function(_$Skipped) then) =
      __$$SkippedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkippedCopyWithImpl<$Res>
    extends _$OnboardingNotificationsEventCopyWithImpl<$Res, _$Skipped>
    implements _$$SkippedCopyWith<$Res> {
  __$$SkippedCopyWithImpl(_$Skipped _value, $Res Function(_$Skipped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Skipped implements Skipped {
  const _$Skipped();

  @override
  String toString() {
    return 'OnboardingNotificationsEvent.skipped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Skipped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activated,
    required TResult Function() skipped,
  }) {
    return skipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activated,
    TResult? Function()? skipped,
  }) {
    return skipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activated,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Activated value) activated,
    required TResult Function(Skipped value) skipped,
  }) {
    return skipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Activated value)? activated,
    TResult? Function(Skipped value)? skipped,
  }) {
    return skipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Activated value)? activated,
    TResult Function(Skipped value)? skipped,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped(this);
    }
    return orElse();
  }
}

abstract class Skipped implements OnboardingNotificationsEvent {
  const factory Skipped() = _$Skipped;
}
