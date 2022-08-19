// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gdpr_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GdprEventTearOff {
  const _$GdprEventTearOff();

  Check check() {
    return const Check();
  }

  UserDecided userDecided({required bool accepted}) {
    return UserDecided(
      accepted: accepted,
    );
  }
}

/// @nodoc
const $GdprEvent = _$GdprEventTearOff();

/// @nodoc
mixin _$GdprEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(bool accepted) userDecided,
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
      _$GdprEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GdprEventCopyWithImpl<$Res> implements $GdprEventCopyWith<$Res> {
  _$GdprEventCopyWithImpl(this._value, this._then);

  final GdprEvent _value;
  // ignore: unused_field
  final $Res Function(GdprEvent) _then;
}

/// @nodoc
abstract class $CheckCopyWith<$Res> {
  factory $CheckCopyWith(Check value, $Res Function(Check) then) =
      _$CheckCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckCopyWithImpl<$Res> extends _$GdprEventCopyWithImpl<$Res>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(Check _value, $Res Function(Check) _then)
      : super(_value, (v) => _then(v as Check));

  @override
  Check get _value => super._value as Check;
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
    return identical(this, other) || (other is Check);
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
abstract class $UserDecidedCopyWith<$Res> {
  factory $UserDecidedCopyWith(
          UserDecided value, $Res Function(UserDecided) then) =
      _$UserDecidedCopyWithImpl<$Res>;
  $Res call({bool accepted});
}

/// @nodoc
class _$UserDecidedCopyWithImpl<$Res> extends _$GdprEventCopyWithImpl<$Res>
    implements $UserDecidedCopyWith<$Res> {
  _$UserDecidedCopyWithImpl(
      UserDecided _value, $Res Function(UserDecided) _then)
      : super(_value, (v) => _then(v as UserDecided));

  @override
  UserDecided get _value => super._value as UserDecided;

  @override
  $Res call({
    Object? accepted = freezed,
  }) {
    return _then(UserDecided(
      accepted: accepted == freezed
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
        (other is UserDecided &&
            (identical(other.accepted, accepted) ||
                const DeepCollectionEquality()
                    .equals(other.accepted, accepted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accepted);

  @JsonKey(ignore: true)
  @override
  $UserDecidedCopyWith<UserDecided> get copyWith =>
      _$UserDecidedCopyWithImpl<UserDecided>(this, _$identity);

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
  const factory UserDecided({required bool accepted}) = _$UserDecided;

  bool get accepted => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDecidedCopyWith<UserDecided> get copyWith =>
      throw _privateConstructorUsedError;
}
