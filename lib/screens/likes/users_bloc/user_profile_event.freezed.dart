// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, bool? useCredit)? fetch,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
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
      _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;
  @useResult
  $Res call({int userId, bool? useCredit});
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res, $Val extends UserProfileEvent>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? useCredit = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      useCredit: freezed == useCredit
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchCopyWith<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  factory _$$FetchCopyWith(_$Fetch value, $Res Function(_$Fetch) then) =
      __$$FetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, bool? useCredit});
}

/// @nodoc
class __$$FetchCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$Fetch>
    implements _$$FetchCopyWith<$Res> {
  __$$FetchCopyWithImpl(_$Fetch _value, $Res Function(_$Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? useCredit = freezed,
  }) {
    return _then(_$Fetch(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      useCredit: freezed == useCredit
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
        (other.runtimeType == runtimeType &&
            other is _$Fetch &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.useCredit, useCredit) ||
                other.useCredit == useCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, useCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCopyWith<_$Fetch> get copyWith =>
      __$$FetchCopyWithImpl<_$Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, bool? useCredit) fetch,
  }) {
    return fetch(userId, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId, bool? useCredit)? fetch,
  }) {
    return fetch?.call(userId, useCredit);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
  }) {
    return fetch?.call(this);
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
  const factory Fetch({required final int userId, final bool? useCredit}) =
      _$Fetch;

  @override
  int get userId;
  @override
  bool? get useCredit;
  @override
  @JsonKey(ignore: true)
  _$$FetchCopyWith<_$Fetch> get copyWith => throw _privateConstructorUsedError;
}
