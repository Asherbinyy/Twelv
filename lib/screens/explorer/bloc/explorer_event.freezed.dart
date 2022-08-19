// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'explorer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExplorerEventTearOff {
  const _$ExplorerEventTearOff();

  ExplorerFetchData fetch() {
    return const ExplorerFetchData();
  }

  Like like({required Profile user, required bool delay, bool? useCredit}) {
    return Like(
      user: user,
      delay: delay,
      useCredit: useCredit,
    );
  }

  Dislike dislike(
      {required Profile user, required bool delay, bool? useCredit}) {
    return Dislike(
      user: user,
      delay: delay,
      useCredit: useCredit,
    );
  }

  Superlike superlike(
      {required Profile user, required bool delay, bool? useCredit}) {
    return Superlike(
      user: user,
      delay: delay,
      useCredit: useCredit,
    );
  }

  ReportProfile reportProfile({required BaseUser user, required bool delay}) {
    return ReportProfile(
      user: user,
      delay: delay,
    );
  }

  Filter filter({required RecommendationsFilters recommendationsFilters}) {
    return Filter(
      recommendationsFilters: recommendationsFilters,
    );
  }

  Skip skip({required int id}) {
    return Skip(
      id: id,
    );
  }
}

/// @nodoc
const $ExplorerEvent = _$ExplorerEventTearOff();

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
      _$ExplorerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExplorerEventCopyWithImpl<$Res>
    implements $ExplorerEventCopyWith<$Res> {
  _$ExplorerEventCopyWithImpl(this._value, this._then);

  final ExplorerEvent _value;
  // ignore: unused_field
  final $Res Function(ExplorerEvent) _then;
}

/// @nodoc
abstract class $ExplorerFetchDataCopyWith<$Res> {
  factory $ExplorerFetchDataCopyWith(
          ExplorerFetchData value, $Res Function(ExplorerFetchData) then) =
      _$ExplorerFetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExplorerFetchDataCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res>
    implements $ExplorerFetchDataCopyWith<$Res> {
  _$ExplorerFetchDataCopyWithImpl(
      ExplorerFetchData _value, $Res Function(ExplorerFetchData) _then)
      : super(_value, (v) => _then(v as ExplorerFetchData));

  @override
  ExplorerFetchData get _value => super._value as ExplorerFetchData;
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
    return identical(this, other) || (other is ExplorerFetchData);
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
abstract class $LikeCopyWith<$Res> {
  factory $LikeCopyWith(Like value, $Res Function(Like) then) =
      _$LikeCopyWithImpl<$Res>;
  $Res call({Profile user, bool delay, bool? useCredit});
}

/// @nodoc
class _$LikeCopyWithImpl<$Res> extends _$ExplorerEventCopyWithImpl<$Res>
    implements $LikeCopyWith<$Res> {
  _$LikeCopyWithImpl(Like _value, $Res Function(Like) _then)
      : super(_value, (v) => _then(v as Like));

  @override
  Like get _value => super._value as Like;

  @override
  $Res call({
    Object? user = freezed,
    Object? delay = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(Like(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      delay: delay == freezed
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@Implements(SwipeEvent)

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
        (other is Like &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.delay, delay) ||
                const DeepCollectionEquality().equals(other.delay, delay)) &&
            (identical(other.useCredit, useCredit) ||
                const DeepCollectionEquality()
                    .equals(other.useCredit, useCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(delay) ^
      const DeepCollectionEquality().hash(useCredit);

  @JsonKey(ignore: true)
  @override
  $LikeCopyWith<Like> get copyWith =>
      _$LikeCopyWithImpl<Like>(this, _$identity);

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

abstract class Like implements ExplorerEvent, SwipeEvent {
  const factory Like(
      {required Profile user, required bool delay, bool? useCredit}) = _$Like;

  Profile get user => throw _privateConstructorUsedError;
  bool get delay => throw _privateConstructorUsedError;
  bool? get useCredit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DislikeCopyWith<$Res> {
  factory $DislikeCopyWith(Dislike value, $Res Function(Dislike) then) =
      _$DislikeCopyWithImpl<$Res>;
  $Res call({Profile user, bool delay, bool? useCredit});
}

/// @nodoc
class _$DislikeCopyWithImpl<$Res> extends _$ExplorerEventCopyWithImpl<$Res>
    implements $DislikeCopyWith<$Res> {
  _$DislikeCopyWithImpl(Dislike _value, $Res Function(Dislike) _then)
      : super(_value, (v) => _then(v as Dislike));

  @override
  Dislike get _value => super._value as Dislike;

  @override
  $Res call({
    Object? user = freezed,
    Object? delay = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(Dislike(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      delay: delay == freezed
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@Implements(SwipeEvent)

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
        (other is Dislike &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.delay, delay) ||
                const DeepCollectionEquality().equals(other.delay, delay)) &&
            (identical(other.useCredit, useCredit) ||
                const DeepCollectionEquality()
                    .equals(other.useCredit, useCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(delay) ^
      const DeepCollectionEquality().hash(useCredit);

  @JsonKey(ignore: true)
  @override
  $DislikeCopyWith<Dislike> get copyWith =>
      _$DislikeCopyWithImpl<Dislike>(this, _$identity);

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

abstract class Dislike implements ExplorerEvent, SwipeEvent {
  const factory Dislike(
      {required Profile user,
      required bool delay,
      bool? useCredit}) = _$Dislike;

  Profile get user => throw _privateConstructorUsedError;
  bool get delay => throw _privateConstructorUsedError;
  bool? get useCredit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DislikeCopyWith<Dislike> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperlikeCopyWith<$Res> {
  factory $SuperlikeCopyWith(Superlike value, $Res Function(Superlike) then) =
      _$SuperlikeCopyWithImpl<$Res>;
  $Res call({Profile user, bool delay, bool? useCredit});
}

/// @nodoc
class _$SuperlikeCopyWithImpl<$Res> extends _$ExplorerEventCopyWithImpl<$Res>
    implements $SuperlikeCopyWith<$Res> {
  _$SuperlikeCopyWithImpl(Superlike _value, $Res Function(Superlike) _then)
      : super(_value, (v) => _then(v as Superlike));

  @override
  Superlike get _value => super._value as Superlike;

  @override
  $Res call({
    Object? user = freezed,
    Object? delay = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(Superlike(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      delay: delay == freezed
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@Implements(SwipeEvent)

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
        (other is Superlike &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.delay, delay) ||
                const DeepCollectionEquality().equals(other.delay, delay)) &&
            (identical(other.useCredit, useCredit) ||
                const DeepCollectionEquality()
                    .equals(other.useCredit, useCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(delay) ^
      const DeepCollectionEquality().hash(useCredit);

  @JsonKey(ignore: true)
  @override
  $SuperlikeCopyWith<Superlike> get copyWith =>
      _$SuperlikeCopyWithImpl<Superlike>(this, _$identity);

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

abstract class Superlike implements ExplorerEvent, SwipeEvent {
  const factory Superlike(
      {required Profile user,
      required bool delay,
      bool? useCredit}) = _$Superlike;

  Profile get user => throw _privateConstructorUsedError;
  bool get delay => throw _privateConstructorUsedError;
  bool? get useCredit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuperlikeCopyWith<Superlike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportProfileCopyWith<$Res> {
  factory $ReportProfileCopyWith(
          ReportProfile value, $Res Function(ReportProfile) then) =
      _$ReportProfileCopyWithImpl<$Res>;
  $Res call({BaseUser user, bool delay});
}

/// @nodoc
class _$ReportProfileCopyWithImpl<$Res>
    extends _$ExplorerEventCopyWithImpl<$Res>
    implements $ReportProfileCopyWith<$Res> {
  _$ReportProfileCopyWithImpl(
      ReportProfile _value, $Res Function(ReportProfile) _then)
      : super(_value, (v) => _then(v as ReportProfile));

  @override
  ReportProfile get _value => super._value as ReportProfile;

  @override
  $Res call({
    Object? user = freezed,
    Object? delay = freezed,
  }) {
    return _then(ReportProfile(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BaseUser,
      delay: delay == freezed
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
        (other is ReportProfile &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.delay, delay) ||
                const DeepCollectionEquality().equals(other.delay, delay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(delay);

  @JsonKey(ignore: true)
  @override
  $ReportProfileCopyWith<ReportProfile> get copyWith =>
      _$ReportProfileCopyWithImpl<ReportProfile>(this, _$identity);

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
  const factory ReportProfile({required BaseUser user, required bool delay}) =
      _$ReportProfile;

  BaseUser get user => throw _privateConstructorUsedError;
  bool get delay => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportProfileCopyWith<ReportProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res>;
  $Res call({RecommendationsFilters recommendationsFilters});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res> extends _$ExplorerEventCopyWithImpl<$Res>
    implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(Filter _value, $Res Function(Filter) _then)
      : super(_value, (v) => _then(v as Filter));

  @override
  Filter get _value => super._value as Filter;

  @override
  $Res call({
    Object? recommendationsFilters = freezed,
  }) {
    return _then(Filter(
      recommendationsFilters: recommendationsFilters == freezed
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
        (other is Filter &&
            (identical(other.recommendationsFilters, recommendationsFilters) ||
                const DeepCollectionEquality().equals(
                    other.recommendationsFilters, recommendationsFilters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recommendationsFilters);

  @JsonKey(ignore: true)
  @override
  $FilterCopyWith<Filter> get copyWith =>
      _$FilterCopyWithImpl<Filter>(this, _$identity);

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
      {required RecommendationsFilters recommendationsFilters}) = _$Filter;

  RecommendationsFilters get recommendationsFilters =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkipCopyWith<$Res> {
  factory $SkipCopyWith(Skip value, $Res Function(Skip) then) =
      _$SkipCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$SkipCopyWithImpl<$Res> extends _$ExplorerEventCopyWithImpl<$Res>
    implements $SkipCopyWith<$Res> {
  _$SkipCopyWithImpl(Skip _value, $Res Function(Skip) _then)
      : super(_value, (v) => _then(v as Skip));

  @override
  Skip get _value => super._value as Skip;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(Skip(
      id: id == freezed
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
        (other is Skip &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $SkipCopyWith<Skip> get copyWith =>
      _$SkipCopyWithImpl<Skip>(this, _$identity);

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
  const factory Skip({required int id}) = _$Skip;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkipCopyWith<Skip> get copyWith => throw _privateConstructorUsedError;
}
