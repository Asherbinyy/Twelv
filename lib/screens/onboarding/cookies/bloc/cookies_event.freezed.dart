// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cookies_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CookiesEventTearOff {
  const _$CookiesEventTearOff();

  Initial initial() {
    return const Initial();
  }

  Update update({required bool analytics, required bool errorTracking}) {
    return Update(
      analytics: analytics,
      errorTracking: errorTracking,
    );
  }
}

/// @nodoc
const $CookiesEvent = _$CookiesEventTearOff();

/// @nodoc
mixin _$CookiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool analytics, bool errorTracking) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool analytics, bool errorTracking)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiesEventCopyWith<$Res> {
  factory $CookiesEventCopyWith(
          CookiesEvent value, $Res Function(CookiesEvent) then) =
      _$CookiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CookiesEventCopyWithImpl<$Res> implements $CookiesEventCopyWith<$Res> {
  _$CookiesEventCopyWithImpl(this._value, this._then);

  final CookiesEvent _value;
  // ignore: unused_field
  final $Res Function(CookiesEvent) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$CookiesEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CookiesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool analytics, bool errorTracking) update,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool analytics, bool errorTracking)? update,
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
    required TResult Function(Update value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CookiesEvent {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UpdateCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
  $Res call({bool analytics, bool errorTracking});
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res> extends _$CookiesEventCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;

  @override
  $Res call({
    Object? analytics = freezed,
    Object? errorTracking = freezed,
  }) {
    return _then(Update(
      analytics: analytics == freezed
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool,
      errorTracking: errorTracking == freezed
          ? _value.errorTracking
          : errorTracking // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$Update implements Update {
  const _$Update({required this.analytics, required this.errorTracking});

  @override
  final bool analytics;
  @override
  final bool errorTracking;

  @override
  String toString() {
    return 'CookiesEvent.update(analytics: $analytics, errorTracking: $errorTracking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Update &&
            (identical(other.analytics, analytics) ||
                const DeepCollectionEquality()
                    .equals(other.analytics, analytics)) &&
            (identical(other.errorTracking, errorTracking) ||
                const DeepCollectionEquality()
                    .equals(other.errorTracking, errorTracking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(analytics) ^
      const DeepCollectionEquality().hash(errorTracking);

  @JsonKey(ignore: true)
  @override
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool analytics, bool errorTracking) update,
  }) {
    return update(analytics, errorTracking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool analytics, bool errorTracking)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(analytics, errorTracking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements CookiesEvent {
  const factory Update({required bool analytics, required bool errorTracking}) =
      _$Update;

  bool get analytics => throw _privateConstructorUsedError;
  bool get errorTracking => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCopyWith<Update> get copyWith => throw _privateConstructorUsedError;
}
