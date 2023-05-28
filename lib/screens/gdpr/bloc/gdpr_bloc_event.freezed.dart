// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gdpr_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GdprEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(bool accepted) userDecided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
    TResult? Function(bool accepted)? userDecided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(bool accepted)? userDecided,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(UserDecided value) userDecided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(UserDecided value)? userDecided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(UserDecided value)? userDecided,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdprEventCopyWith<$Res> {
  factory $GdprEventCopyWith(GdprEvent value, $Res Function(GdprEvent) then) =
      _$GdprEventCopyWithImpl<$Res, GdprEvent>;
}

/// @nodoc
class _$GdprEventCopyWithImpl<$Res, $Val extends GdprEvent>
    implements $GdprEventCopyWith<$Res> {
  _$GdprEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckCopyWith<$Res> {
  factory _$$CheckCopyWith(_$Check value, $Res Function(_$Check) then) =
      __$$CheckCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckCopyWithImpl<$Res> extends _$GdprEventCopyWithImpl<$Res, _$Check>
    implements _$$CheckCopyWith<$Res> {
  __$$CheckCopyWithImpl(_$Check _value, $Res Function(_$Check) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Check implements Check {
  const _$Check();

  @override
  String toString() {
    return 'GdprEvent.check()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Check);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(bool accepted) userDecided,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
    TResult? Function(bool accepted)? userDecided,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(bool accepted)? userDecided,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(UserDecided value) userDecided,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(UserDecided value)? userDecided,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(UserDecided value)? userDecided,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class Check implements GdprEvent {
  const factory Check() = _$Check;
}

/// @nodoc
abstract class _$$UserDecidedCopyWith<$Res> {
  factory _$$UserDecidedCopyWith(
          _$UserDecided value, $Res Function(_$UserDecided) then) =
      __$$UserDecidedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool accepted});
}

/// @nodoc
class __$$UserDecidedCopyWithImpl<$Res>
    extends _$GdprEventCopyWithImpl<$Res, _$UserDecided>
    implements _$$UserDecidedCopyWith<$Res> {
  __$$UserDecidedCopyWithImpl(
      _$UserDecided _value, $Res Function(_$UserDecided) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accepted = null,
  }) {
    return _then(_$UserDecided(
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserDecided implements UserDecided {
  const _$UserDecided({required this.accepted});

  @override
  final bool accepted;

  @override
  String toString() {
    return 'GdprEvent.userDecided(accepted: $accepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDecided &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDecidedCopyWith<_$UserDecided> get copyWith =>
      __$$UserDecidedCopyWithImpl<_$UserDecided>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(bool accepted) userDecided,
  }) {
    return userDecided(accepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
    TResult? Function(bool accepted)? userDecided,
  }) {
    return userDecided?.call(accepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(bool accepted)? userDecided,
    required TResult orElse(),
  }) {
    if (userDecided != null) {
      return userDecided(accepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(UserDecided value) userDecided,
  }) {
    return userDecided(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(UserDecided value)? userDecided,
  }) {
    return userDecided?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(UserDecided value)? userDecided,
    required TResult orElse(),
  }) {
    if (userDecided != null) {
      return userDecided(this);
    }
    return orElse();
  }
}

abstract class UserDecided implements GdprEvent {
  const factory UserDecided({required final bool accepted}) = _$UserDecided;

  bool get accepted;
  @JsonKey(ignore: true)
  _$$UserDecidedCopyWith<_$UserDecided> get copyWith =>
      throw _privateConstructorUsedError;
}
