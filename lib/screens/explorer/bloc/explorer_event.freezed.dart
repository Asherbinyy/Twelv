// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'explorer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExplorerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorerEventCopyWith<$Res> {
  factory $ExplorerEventCopyWith(
          ExplorerEvent value, $Res Function(ExplorerEvent) then) =
      _$ExplorerEventCopyWithImpl<$Res, ExplorerEvent>;
}

/// @nodoc
class _$ExplorerEventCopyWithImpl<$Res, $Val extends ExplorerEvent>
    implements $ExplorerEventCopyWith<$Res> {
  _$ExplorerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExplorerFetchDataCopyWith<$Res> {
  factory _$$ExplorerFetchDataCopyWith(
          _$ExplorerFetchData value, $Res Function(_$ExplorerFetchData) then) =
      __$$ExplorerFetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExplorerFetchDataCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res, _$ExplorerFetchData>
    implements _$$ExplorerFetchDataCopyWith<$Res> {
  __$$ExplorerFetchDataCopyWithImpl(
      _$ExplorerFetchData _value, $Res Function(_$ExplorerFetchData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExplorerFetchData implements ExplorerFetchData {
  const _$ExplorerFetchData();

  @override
  String toString() {
    return 'ExplorerEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExplorerFetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
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
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ExplorerFetchData implements ExplorerEvent {
  const factory ExplorerFetchData() = _$ExplorerFetchData;
}

/// @nodoc
abstract class _$$LikeCopyWith<$Res> {
  factory _$$LikeCopyWith(_$Like value, $Res Function(_$Like) then) =
      __$$LikeCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user, bool delay, bool? useCredit});
}

/// @nodoc
class __$$LikeCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res, _$Like>
    implements _$$LikeCopyWith<$Res> {
  __$$LikeCopyWithImpl(_$Like _value, $Res Function(_$Like) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? delay = null,
    Object? useCredit = freezed,
  }) {
    return _then(_$Like(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
      useCredit: freezed == useCredit
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Like implements Like {
  const _$Like({required this.user, required this.delay, this.useCredit});

  @override
  final Profile user;
  @override
  final bool delay;
  @override
  final bool? useCredit;

  @override
  String toString() {
    return 'ExplorerEvent.like(user: $user, delay: $delay, useCredit: $useCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Like &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.useCredit, useCredit) ||
                other.useCredit == useCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, delay, useCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeCopyWith<_$Like> get copyWith =>
      __$$LikeCopyWithImpl<_$Like>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) {
    return like(user, delay, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) {
    return like?.call(user, delay, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(user, delay, useCredit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class Like implements ExplorerEvent{
  const factory Like(
      {required final Profile user,
      required final bool delay,
      final bool? useCredit}) = _$Like;

  Profile get user;
  bool get delay;
  bool? get useCredit;
  @JsonKey(ignore: true)
  _$$LikeCopyWith<_$Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeCopyWith<$Res> {
  factory _$$DislikeCopyWith(_$Dislike value, $Res Function(_$Dislike) then) =
      __$$DislikeCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user, bool delay, bool? useCredit});
}

/// @nodoc
class __$$DislikeCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res, _$Dislike>
    implements _$$DislikeCopyWith<$Res> {
  __$$DislikeCopyWithImpl(_$Dislike _value, $Res Function(_$Dislike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? delay = null,
    Object? useCredit = freezed,
  }) {
    return _then(_$Dislike(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
      useCredit: freezed == useCredit
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Dislike implements Dislike {
  const _$Dislike({required this.user, required this.delay, this.useCredit});

  @override
  final Profile user;
  @override
  final bool delay;
  @override
  final bool? useCredit;

  @override
  String toString() {
    return 'ExplorerEvent.dislike(user: $user, delay: $delay, useCredit: $useCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Dislike &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.useCredit, useCredit) ||
                other.useCredit == useCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, delay, useCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeCopyWith<_$Dislike> get copyWith =>
      __$$DislikeCopyWithImpl<_$Dislike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) {
    return dislike(user, delay, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) {
    return dislike?.call(user, delay, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(user, delay, useCredit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) {
    return dislike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) {
    return dislike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(this);
    }
    return orElse();
  }
}

abstract class Dislike implements ExplorerEvent {
  const factory Dislike(
      {required final Profile user,
      required final bool delay,
      final bool? useCredit}) = _$Dislike;

  Profile get user;
  bool get delay;
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
  $Res call({Profile user, bool delay, bool? useCredit});
}

/// @nodoc
class __$$SuperlikeCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res, _$Superlike>
    implements _$$SuperlikeCopyWith<$Res> {
  __$$SuperlikeCopyWithImpl(
      _$Superlike _value, $Res Function(_$Superlike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? delay = null,
    Object? useCredit = freezed,
  }) {
    return _then(_$Superlike(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
      useCredit: freezed == useCredit
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Superlike implements Superlike {
  const _$Superlike({required this.user, required this.delay, this.useCredit});

  @override
  final Profile user;
  @override
  final bool delay;
  @override
  final bool? useCredit;

  @override
  String toString() {
    return 'ExplorerEvent.superlike(user: $user, delay: $delay, useCredit: $useCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Superlike &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.useCredit, useCredit) ||
                other.useCredit == useCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, delay, useCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperlikeCopyWith<_$Superlike> get copyWith =>
      __$$SuperlikeCopyWithImpl<_$Superlike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) {
    return superlike(user, delay, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) {
    return superlike?.call(user, delay, useCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
    required TResult orElse(),
  }) {
    if (superlike != null) {
      return superlike(user, delay, useCredit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) {
    return superlike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) {
    return superlike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) {
    if (superlike != null) {
      return superlike(this);
    }
    return orElse();
  }
}

abstract class Superlike implements ExplorerEvent {
  const factory Superlike(
      {required final Profile user,
      required final bool delay,
      final bool? useCredit}) = _$Superlike;

  Profile get user;
  bool get delay;
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
  $Res call({BaseUser user, bool delay});
}

/// @nodoc
class __$$ReportProfileCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res, _$ReportProfile>
    implements _$$ReportProfileCopyWith<$Res> {
  __$$ReportProfileCopyWithImpl(
      _$ReportProfile _value, $Res Function(_$ReportProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? delay = null,
  }) {
    return _then(_$ReportProfile(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BaseUser,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReportProfile implements ReportProfile {
  const _$ReportProfile({required this.user, required this.delay});

  @override
  final BaseUser user;
  @override
  final bool delay;

  @override
  String toString() {
    return 'ExplorerEvent.reportProfile(user: $user, delay: $delay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportProfile &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.delay, delay) || other.delay == delay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, delay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportProfileCopyWith<_$ReportProfile> get copyWith =>
      __$$ReportProfileCopyWithImpl<_$ReportProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) {
    return reportProfile(user, delay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) {
    return reportProfile?.call(user, delay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
    required TResult orElse(),
  }) {
    if (reportProfile != null) {
      return reportProfile(user, delay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) {
    return reportProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) {
    return reportProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) {
    if (reportProfile != null) {
      return reportProfile(this);
    }
    return orElse();
  }
}

abstract class ReportProfile implements ExplorerEvent {
  const factory ReportProfile(
      {required final BaseUser user,
      required final bool delay}) = _$ReportProfile;

  BaseUser get user;
  bool get delay;
  @JsonKey(ignore: true)
  _$$ReportProfileCopyWith<_$ReportProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCopyWith<$Res> {
  factory _$$FilterCopyWith(_$Filter value, $Res Function(_$Filter) then) =
      __$$FilterCopyWithImpl<$Res>;
  @useResult
  $Res call({RecommendationsFilters recommendationsFilters});
}

/// @nodoc
class __$$FilterCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res, _$Filter>
    implements _$$FilterCopyWith<$Res> {
  __$$FilterCopyWithImpl(_$Filter _value, $Res Function(_$Filter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationsFilters = null,
  }) {
    return _then(_$Filter(
      recommendationsFilters: null == recommendationsFilters
          ? _value.recommendationsFilters
          : recommendationsFilters // ignore: cast_nullable_to_non_nullable
              as RecommendationsFilters,
    ));
  }
}

/// @nodoc

class _$Filter implements Filter {
  const _$Filter({required this.recommendationsFilters});

  @override
  final RecommendationsFilters recommendationsFilters;

  @override
  String toString() {
    return 'ExplorerEvent.filter(recommendationsFilters: $recommendationsFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Filter &&
            (identical(other.recommendationsFilters, recommendationsFilters) ||
                other.recommendationsFilters == recommendationsFilters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recommendationsFilters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCopyWith<_$Filter> get copyWith =>
      __$$FilterCopyWithImpl<_$Filter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) {
    return filter(recommendationsFilters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) {
    return filter?.call(recommendationsFilters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(recommendationsFilters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class Filter implements ExplorerEvent {
  const factory Filter(
          {required final RecommendationsFilters recommendationsFilters}) =
      _$Filter;

  RecommendationsFilters get recommendationsFilters;
  @JsonKey(ignore: true)
  _$$FilterCopyWith<_$Filter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SkipCopyWith<$Res> {
  factory _$$SkipCopyWith(_$Skip value, $Res Function(_$Skip) then) =
      __$$SkipCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SkipCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res, _$Skip>
    implements _$$SkipCopyWith<$Res> {
  __$$SkipCopyWithImpl(_$Skip _value, $Res Function(_$Skip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Skip(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Skip implements Skip {
  const _$Skip({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ExplorerEvent.skip(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Skip &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkipCopyWith<_$Skip> get copyWith =>
      __$$SkipCopyWithImpl<_$Skip>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Profile user, bool delay, bool? useCredit) like,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        dislike,
    required TResult Function(Profile user, bool delay, bool? useCredit)
        superlike,
    required TResult Function(BaseUser user, bool delay) reportProfile,
    required TResult Function(RecommendationsFilters recommendationsFilters)
        filter,
    required TResult Function(int id) skip,
  }) {
    return skip(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Profile user, bool delay, bool? useCredit)? like,
    TResult? Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult? Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult? Function(BaseUser user, bool delay)? reportProfile,
    TResult? Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult? Function(int id)? skip,
  }) {
    return skip?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Profile user, bool delay, bool? useCredit)? like,
    TResult Function(Profile user, bool delay, bool? useCredit)? dislike,
    TResult Function(Profile user, bool delay, bool? useCredit)? superlike,
    TResult Function(BaseUser user, bool delay)? reportProfile,
    TResult Function(RecommendationsFilters recommendationsFilters)? filter,
    TResult Function(int id)? skip,
    required TResult orElse(),
  }) {
    if (skip != null) {
      return skip(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExplorerFetchData value) fetch,
    required TResult Function(Like value) like,
    required TResult Function(Dislike value) dislike,
    required TResult Function(Superlike value) superlike,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(Filter value) filter,
    required TResult Function(Skip value) skip,
  }) {
    return skip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExplorerFetchData value)? fetch,
    TResult? Function(Like value)? like,
    TResult? Function(Dislike value)? dislike,
    TResult? Function(Superlike value)? superlike,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(Filter value)? filter,
    TResult? Function(Skip value)? skip,
  }) {
    return skip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExplorerFetchData value)? fetch,
    TResult Function(Like value)? like,
    TResult Function(Dislike value)? dislike,
    TResult Function(Superlike value)? superlike,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(Filter value)? filter,
    TResult Function(Skip value)? skip,
    required TResult orElse(),
  }) {
    if (skip != null) {
      return skip(this);
    }
    return orElse();
  }
}

abstract class Skip implements ExplorerEvent {
  const factory Skip({required final int id}) = _$Skip;

  int get id;
  @JsonKey(ignore: true)
  _$$SkipCopyWith<_$Skip> get copyWith => throw _privateConstructorUsedError;
}
