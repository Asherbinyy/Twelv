// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'likes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool? useCredit) like,
    required TResult Function(Profile user, bool? useCredit) dislike,
    required TResult Function(Profile user, bool? useCredit) superlike,
    required TResult Function(Profile user) reportProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool? useCredit)? like,
    TResult? Function(Profile user, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool? useCredit)? superlike,
    TResult? Function(Profile user)? reportProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool? useCredit)? like,
    TResult Function(Profile user, bool? useCredit)? dislike,
    TResult Function(Profile user, bool? useCredit)? superlike,
    TResult Function(Profile user)? reportProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesEventCopyWith<$Res> {
  factory $LikesEventCopyWith(
          LikesEvent value, $Res Function(LikesEvent) then) =
      _$LikesEventCopyWithImpl<$Res, LikesEvent>;
}

/// @nodoc
class _$LikesEventCopyWithImpl<$Res, $Val extends LikesEvent>
    implements $LikesEventCopyWith<$Res> {
  _$LikesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDataCopyWith<$Res> {
  factory _$$FetchDataCopyWith(
          _$FetchData value, $Res Function(_$FetchData) then) =
      __$$FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$FetchData>
    implements _$$FetchDataCopyWith<$Res> {
  __$$FetchDataCopyWithImpl(
      _$FetchData _value, $Res Function(_$FetchData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchData implements FetchData {
  const _$FetchData();

  @override
  String toString() {
    return 'LikesEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool? useCredit) like,
    required TResult Function(Profile user, bool? useCredit) dislike,
    required TResult Function(Profile user, bool? useCredit) superlike,
    required TResult Function(Profile user) reportProfile,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool? useCredit)? like,
    TResult? Function(Profile user, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool? useCredit)? superlike,
    TResult? Function(Profile user)? reportProfile,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool? useCredit)? like,
    TResult Function(Profile user, bool? useCredit)? dislike,
    TResult Function(Profile user, bool? useCredit)? superlike,
    TResult Function(Profile user)? reportProfile,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchData implements LikesEvent {
  const factory FetchData() = _$FetchData;
}

/// @nodoc
abstract class _$$LikeCopyWith<$Res> {
  factory _$$LikeCopyWith(_$Like value, $Res Function(_$Like) then) =
      __$$LikeCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user, bool? useCredit});
}

/// @nodoc
class __$$LikeCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res, _$Like>
    implements _$$LikeCopyWith<$Res> {
  __$$LikeCopyWithImpl(_$Like _value, $Res Function(_$Like) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? useCredit = freezed,
  }) {
    return _then(_$Like(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      useCredit: freezed == useCredit
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Like implements Like {
  const _$Like({required this.user, this.useCredit});

  @override
  final Profile user;
  @override
  final bool? useCredit;

  @override
  String toString() {
    return 'LikesEvent.like(user: $user, useCredit: $useCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Like &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.useCredit, useCredit) ||
                other.useCredit == useCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, useCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeCopyWith<_$Like> get copyWith =>
      __$$LikeCopyWithImpl<_$Like>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool? useCredit) like,
    required TResult Function(Profile user, bool? useCredit) dislike,
    required TResult Function(Profile user, bool? useCredit) superlike,
    required TResult Function(Profile user) reportProfile,
  }) {
    return like(user, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool? useCredit)? like,
    TResult? Function(Profile user, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool? useCredit)? superlike,
    TResult? Function(Profile user)? reportProfile,
  }) {
    return like?.call(user, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool? useCredit)? like,
    TResult Function(Profile user, bool? useCredit)? dislike,
    TResult Function(Profile user, bool? useCredit)? superlike,
    TResult Function(Profile user)? reportProfile,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(user, useCredit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class Like implements LikesEvent {
const factory Like({
required Profile user,
bool? useCredit,
}) = _$Like;

Profile get user;
bool? get useCredit;
@JsonKey(ignore: true)
_$LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}


/// @nodoc
abstract class _$$DislikeCopyWith<$Res> {
  factory _$$DislikeCopyWith(_$Dislike value, $Res Function(_$Dislike) then) =
      __$$DislikeCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user, bool? useCredit});
}

/// @nodoc
class __$$DislikeCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$Dislike>
    implements _$$DislikeCopyWith<$Res> {
  __$$DislikeCopyWithImpl(_$Dislike _value, $Res Function(_$Dislike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? useCredit = freezed,
  }) {
    return _then(_$Dislike(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      useCredit: freezed == useCredit
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Dislike implements Dislike {
  const _$Dislike({required this.user, this.useCredit});

  @override
  final Profile user;
  @override
  final bool? useCredit;

  @override
  String toString() {
    return 'LikesEvent.dislike(user: $user, useCredit: $useCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Dislike &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.useCredit, useCredit) ||
                other.useCredit == useCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, useCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeCopyWith<_$Dislike> get copyWith =>
      __$$DislikeCopyWithImpl<_$Dislike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool? useCredit) like,
    required TResult Function(Profile user, bool? useCredit) dislike,
    required TResult Function(Profile user, bool? useCredit) superlike,
    required TResult Function(Profile user) reportProfile,
  }) {
    return dislike(user, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool? useCredit)? like,
    TResult? Function(Profile user, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool? useCredit)? superlike,
    TResult? Function(Profile user)? reportProfile,
  }) {
    return dislike?.call(user, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool? useCredit)? like,
    TResult Function(Profile user, bool? useCredit)? dislike,
    TResult Function(Profile user, bool? useCredit)? superlike,
    TResult Function(Profile user)? reportProfile,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(user, useCredit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
  }) {
    return dislike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
  }) {
    return dislike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(this);
    }
    return orElse();
  }
}

abstract class Dislike implements LikesEvent, dynamic {
  const factory Dislike({required final Profile user, final bool? useCredit}) =
      _$Dislike;

  Profile get user;
  bool? get useCredit;
  @JsonKey(ignore: true)
  _$$DislikeCopyWith<_$Dislike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuperlikeCopyWith<$Res> {
  factory _$$SuperlikeCopyWith(
          _$Superlike value, $Res Function(_$Superlike) then) =
      __$$SuperlikeCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user, bool? useCredit});
}

/// @nodoc
class __$$SuperlikeCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$Superlike>
    implements _$$SuperlikeCopyWith<$Res> {
  __$$SuperlikeCopyWithImpl(
      _$Superlike _value, $Res Function(_$Superlike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? useCredit = freezed,
  }) {
    return _then(_$Superlike(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      useCredit: freezed == useCredit
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Superlike implements Superlike {
  const _$Superlike({required this.user, this.useCredit});

  @override
  final Profile user;
  @override
  final bool? useCredit;

  @override
  String toString() {
    return 'LikesEvent.superlike(user: $user, useCredit: $useCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Superlike &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.useCredit, useCredit) ||
                other.useCredit == useCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, useCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperlikeCopyWith<_$Superlike> get copyWith =>
      __$$SuperlikeCopyWithImpl<_$Superlike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool? useCredit) like,
    required TResult Function(Profile user, bool? useCredit) dislike,
    required TResult Function(Profile user, bool? useCredit) superlike,
    required TResult Function(Profile user) reportProfile,
  }) {
    return superlike(user, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool? useCredit)? like,
    TResult? Function(Profile user, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool? useCredit)? superlike,
    TResult? Function(Profile user)? reportProfile,
  }) {
    return superlike?.call(user, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool? useCredit)? like,
    TResult Function(Profile user, bool? useCredit)? dislike,
    TResult Function(Profile user, bool? useCredit)? superlike,
    TResult Function(Profile user)? reportProfile,
    required TResult orElse(),
  }) {
    if (superlike != null) {
      return superlike(user, useCredit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
  }) {
    return superlike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
  }) {
    return superlike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    required TResult orElse(),
  }) {
    if (superlike != null) {
      return superlike(this);
    }
    return orElse();
  }
}

abstract class Superlike implements LikesEvent, dynamic {
  const factory Superlike(
      {required final Profile user, final bool? useCredit}) = _$Superlike;

  Profile get user;
  bool? get useCredit;
  @JsonKey(ignore: true)
  _$$SuperlikeCopyWith<_$Superlike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportProfileCopyWith<$Res> {
  factory _$$ReportProfileCopyWith(
          _$ReportProfile value, $Res Function(_$ReportProfile) then) =
      __$$ReportProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user});
}

/// @nodoc
class __$$ReportProfileCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$ReportProfile>
    implements _$$ReportProfileCopyWith<$Res> {
  __$$ReportProfileCopyWithImpl(
      _$ReportProfile _value, $Res Function(_$ReportProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ReportProfile(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$ReportProfile implements ReportProfile {
  const _$ReportProfile({required this.user});

  @override
  final Profile user;

  @override
  String toString() {
    return 'LikesEvent.reportProfile(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportProfile &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportProfileCopyWith<_$ReportProfile> get copyWith =>
      __$$ReportProfileCopyWithImpl<_$ReportProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool? useCredit) like,
    required TResult Function(Profile user, bool? useCredit) dislike,
    required TResult Function(Profile user, bool? useCredit) superlike,
    required TResult Function(Profile user) reportProfile,
  }) {
    return reportProfile(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool? useCredit)? like,
    TResult? Function(Profile user, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool? useCredit)? superlike,
    TResult? Function(Profile user)? reportProfile,
  }) {
    return reportProfile?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool? useCredit)? like,
    TResult Function(Profile user, bool? useCredit)? dislike,
    TResult Function(Profile user, bool? useCredit)? superlike,
    TResult Function(Profile user)? reportProfile,
    required TResult orElse(),
  }) {
    if (reportProfile != null) {
      return reportProfile(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
  }) {
    return reportProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
  }) {
    return reportProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    required TResult orElse(),
  }) {
    if (reportProfile != null) {
      return reportProfile(this);
    }
    return orElse();
  }
}

abstract class ReportProfile implements LikesEvent {
  const factory ReportProfile({required final Profile user}) = _$ReportProfile;

  Profile get user;
  @JsonKey(ignore: true)
  _$$ReportProfileCopyWith<_$ReportProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
