// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

  Fetch fetch({required int userId, bool? useCredit}) {
    return Fetch(
      userId: userId,
      useCredit: useCredit,
    );
  }
}

/// @nodoc
const $UserProfileEvent = _$UserProfileEventTearOff();

/// @nodoc
mixin _$UserProfileEvent {
  int get userId => throw _privateConstructorUsedError;
  bool? get useCredit => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, bool? useCredit) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, bool? useCredit)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileEventCopyWith<UserProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
  $Res call({int userId, bool? useCredit});
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class $FetchCopyWith<$Res> implements $UserProfileEventCopyWith<$Res> {
  factory $FetchCopyWith(Fetch value, $Res Function(Fetch) then) =
      _$FetchCopyWithImpl<$Res>;
  @override
  $Res call({int userId, bool? useCredit});
}

/// @nodoc
class _$FetchCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
    implements $FetchCopyWith<$Res> {
  _$FetchCopyWithImpl(Fetch _value, $Res Function(Fetch) _then)
      : super(_value, (v) => _then(v as Fetch));

  @override
  Fetch get _value => super._value as Fetch;

  @override
  $Res call({
    Object? userId = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(Fetch(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
class _$Fetch implements Fetch {
  const _$Fetch({required this.userId, this.useCredit});

  @override
  final int userId;
  @override
  final bool? useCredit;

  @override
  String toString() {
    return 'UserProfileEvent.fetch(userId: $userId, useCredit: $useCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetch &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.useCredit, useCredit) ||
                const DeepCollectionEquality()
                    .equals(other.useCredit, useCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(useCredit);

  @JsonKey(ignore: true)
  @override
  $FetchCopyWith<Fetch> get copyWith =>
      _$FetchCopyWithImpl<Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, bool? useCredit) fetch,
  }) {
    return fetch(userId, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, bool? useCredit)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(userId, useCredit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements UserProfileEvent {
  const factory Fetch({required int userId, bool? useCredit}) = _$Fetch;

  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  bool? get useCredit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FetchCopyWith<Fetch> get copyWith => throw _privateConstructorUsedError;
}
