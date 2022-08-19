// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'likes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LikesEventTearOff {
  const _$LikesEventTearOff();

  FetchData fetch() {
    return const FetchData();
  }

  Like like({required Profile user, bool? useCredit}) {
    return Like(
      user: user,
      useCredit: useCredit,
    );
  }

  Dislike dislike({required Profile user, bool? useCredit}) {
    return Dislike(
      user: user,
      useCredit: useCredit,
    );
  }

  Superlike superlike({required Profile user, bool? useCredit}) {
    return Superlike(
      user: user,
      useCredit: useCredit,
    );
  }

  ReportProfile reportProfile({required Profile user}) {
    return ReportProfile(
      user: user,
    );
  }
}

/// @nodoc
const $LikesEvent = _$LikesEventTearOff();

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
      _$LikesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikesEventCopyWithImpl<$Res> implements $LikesEventCopyWith<$Res> {
  _$LikesEventCopyWithImpl(this._value, this._then);

  final LikesEvent _value;
  // ignore: unused_field
  final $Res Function(LikesEvent) _then;
}

/// @nodoc
abstract class $FetchDataCopyWith<$Res> {
  factory $FetchDataCopyWith(FetchData value, $Res Function(FetchData) then) =
      _$FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchDataCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements $FetchDataCopyWith<$Res> {
  _$FetchDataCopyWithImpl(FetchData _value, $Res Function(FetchData) _then)
      : super(_value, (v) => _then(v as FetchData));

  @override
  FetchData get _value => super._value as FetchData;
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
    return identical(this, other) || (other is FetchData);
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
abstract class $LikeCopyWith<$Res> {
  factory $LikeCopyWith(Like value, $Res Function(Like) then) =
      _$LikeCopyWithImpl<$Res>;
  $Res call({Profile user, bool? useCredit});
}

/// @nodoc
class _$LikeCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements $LikeCopyWith<$Res> {
  _$LikeCopyWithImpl(Like _value, $Res Function(Like) _then)
      : super(_value, (v) => _then(v as Like));

  @override
  Like get _value => super._value as Like;

  @override
  $Res call({
    Object? user = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(Like(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@Implements(LikeActionEvent)

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
        (other is Like &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.useCredit, useCredit) ||
                const DeepCollectionEquality()
                    .equals(other.useCredit, useCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(useCredit);

  @JsonKey(ignore: true)
  @override
  $LikeCopyWith<Like> get copyWith =>
      _$LikeCopyWithImpl<Like>(this, _$identity);

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

abstract class Like implements LikesEvent, LikeActionEvent {
  const factory Like({required Profile user, bool? useCredit}) = _$Like;

  Profile get user => throw _privateConstructorUsedError;
  bool? get useCredit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DislikeCopyWith<$Res> {
  factory $DislikeCopyWith(Dislike value, $Res Function(Dislike) then) =
      _$DislikeCopyWithImpl<$Res>;
  $Res call({Profile user, bool? useCredit});
}

/// @nodoc
class _$DislikeCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements $DislikeCopyWith<$Res> {
  _$DislikeCopyWithImpl(Dislike _value, $Res Function(Dislike) _then)
      : super(_value, (v) => _then(v as Dislike));

  @override
  Dislike get _value => super._value as Dislike;

  @override
  $Res call({
    Object? user = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(Dislike(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@Implements(LikeActionEvent)

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
        (other is Dislike &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.useCredit, useCredit) ||
                const DeepCollectionEquality()
                    .equals(other.useCredit, useCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(useCredit);

  @JsonKey(ignore: true)
  @override
  $DislikeCopyWith<Dislike> get copyWith =>
      _$DislikeCopyWithImpl<Dislike>(this, _$identity);

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

abstract class Dislike implements LikesEvent, LikeActionEvent {
  const factory Dislike({required Profile user, bool? useCredit}) = _$Dislike;

  Profile get user => throw _privateConstructorUsedError;
  bool? get useCredit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DislikeCopyWith<Dislike> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperlikeCopyWith<$Res> {
  factory $SuperlikeCopyWith(Superlike value, $Res Function(Superlike) then) =
      _$SuperlikeCopyWithImpl<$Res>;
  $Res call({Profile user, bool? useCredit});
}

/// @nodoc
class _$SuperlikeCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements $SuperlikeCopyWith<$Res> {
  _$SuperlikeCopyWithImpl(Superlike _value, $Res Function(Superlike) _then)
      : super(_value, (v) => _then(v as Superlike));

  @override
  Superlike get _value => super._value as Superlike;

  @override
  $Res call({
    Object? user = freezed,
    Object? useCredit = freezed,
  }) {
    return _then(Superlike(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      useCredit: useCredit == freezed
          ? _value.useCredit
          : useCredit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@Implements(LikeActionEvent)

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
        (other is Superlike &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.useCredit, useCredit) ||
                const DeepCollectionEquality()
                    .equals(other.useCredit, useCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(useCredit);

  @JsonKey(ignore: true)
  @override
  $SuperlikeCopyWith<Superlike> get copyWith =>
      _$SuperlikeCopyWithImpl<Superlike>(this, _$identity);

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

abstract class Superlike implements LikesEvent, LikeActionEvent {
  const factory Superlike({required Profile user, bool? useCredit}) =
      _$Superlike;

  Profile get user => throw _privateConstructorUsedError;
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
  $Res call({Profile user});
}

/// @nodoc
class _$ReportProfileCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements $ReportProfileCopyWith<$Res> {
  _$ReportProfileCopyWithImpl(
      ReportProfile _value, $Res Function(ReportProfile) _then)
      : super(_value, (v) => _then(v as ReportProfile));

  @override
  ReportProfile get _value => super._value as ReportProfile;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(ReportProfile(
      user: user == freezed
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
        (other is ReportProfile &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $ReportProfileCopyWith<ReportProfile> get copyWith =>
      _$ReportProfileCopyWithImpl<ReportProfile>(this, _$identity);

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
  const factory ReportProfile({required Profile user}) = _$ReportProfile;

  Profile get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportProfileCopyWith<ReportProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
