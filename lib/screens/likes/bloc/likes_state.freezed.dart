// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'likes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LikesStateTearOff {
  const _$LikesStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  FetchedData fetchedData(List<Profile> users,
      {bool isAfterReportingProfile = false}) {
    return FetchedData(
      users,
      isAfterReportingProfile: isAfterReportingProfile,
    );
  }

  LikesError likesError(Exception error, LikesEvent event) {
    return LikesError(
      error,
      event,
    );
  }

  Match match(SwipeMatch swipeMatch, BaseUser userRecommended) {
    return Match(
      swipeMatch,
      userRecommended,
    );
  }

  Superliked superliked() {
    return const Superliked();
  }
}

/// @nodoc
const $LikesState = _$LikesStateTearOff();

/// @nodoc
mixin _$LikesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Profile> users, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(Exception error, LikesEvent event) likesError,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(Exception error, LikesEvent event)? likesError,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(LikesError value) likesError,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(LikesError value)? likesError,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesStateCopyWith<$Res> {
  factory $LikesStateCopyWith(
          LikesState value, $Res Function(LikesState) then) =
      _$LikesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikesStateCopyWithImpl<$Res> implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  final LikesState _value;
  // ignore: unused_field
  final $Res Function(LikesState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
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
    return 'LikesState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<Profile> users, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(Exception error, LikesEvent event) likesError,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(Exception error, LikesEvent event)? likesError,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
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
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(LikesError value) likesError,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(LikesError value)? likesError,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LikesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LikesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Profile> users, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(Exception error, LikesEvent event) likesError,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(Exception error, LikesEvent event)? likesError,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(LikesError value) likesError,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(LikesError value)? likesError,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LikesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FetchedDataCopyWith<$Res> {
  factory $FetchedDataCopyWith(
          FetchedData value, $Res Function(FetchedData) then) =
      _$FetchedDataCopyWithImpl<$Res>;
  $Res call({List<Profile> users, bool isAfterReportingProfile});
}

/// @nodoc
class _$FetchedDataCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements $FetchedDataCopyWith<$Res> {
  _$FetchedDataCopyWithImpl(
      FetchedData _value, $Res Function(FetchedData) _then)
      : super(_value, (v) => _then(v as FetchedData));

  @override
  FetchedData get _value => super._value as FetchedData;

  @override
  $Res call({
    Object? users = freezed,
    Object? isAfterReportingProfile = freezed,
  }) {
    return _then(FetchedData(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      isAfterReportingProfile: isAfterReportingProfile == freezed
          ? _value.isAfterReportingProfile
          : isAfterReportingProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$FetchedData implements FetchedData {
  const _$FetchedData(this.users, {this.isAfterReportingProfile = false});

  @override
  final List<Profile> users;
  @JsonKey(defaultValue: false)
  @override
  final bool isAfterReportingProfile;

  @override
  String toString() {
    return 'LikesState.fetchedData(users: $users, isAfterReportingProfile: $isAfterReportingProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchedData &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(
                    other.isAfterReportingProfile, isAfterReportingProfile) ||
                const DeepCollectionEquality().equals(
                    other.isAfterReportingProfile, isAfterReportingProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(isAfterReportingProfile);

  @JsonKey(ignore: true)
  @override
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      _$FetchedDataCopyWithImpl<FetchedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Profile> users, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(Exception error, LikesEvent event) likesError,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
  }) {
    return fetchedData(users, isAfterReportingProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(Exception error, LikesEvent event)? likesError,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(users, isAfterReportingProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(LikesError value) likesError,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
  }) {
    return fetchedData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(LikesError value)? likesError,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(this);
    }
    return orElse();
  }
}

abstract class FetchedData implements LikesState {
  const factory FetchedData(List<Profile> users,
      {bool isAfterReportingProfile}) = _$FetchedData;

  List<Profile> get users => throw _privateConstructorUsedError;
  bool get isAfterReportingProfile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesErrorCopyWith<$Res> {
  factory $LikesErrorCopyWith(
          LikesError value, $Res Function(LikesError) then) =
      _$LikesErrorCopyWithImpl<$Res>;
  $Res call({Exception error, LikesEvent event});

  $LikesEventCopyWith<$Res> get event;
}

/// @nodoc
class _$LikesErrorCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements $LikesErrorCopyWith<$Res> {
  _$LikesErrorCopyWithImpl(LikesError _value, $Res Function(LikesError) _then)
      : super(_value, (v) => _then(v as LikesError));

  @override
  LikesError get _value => super._value as LikesError;

  @override
  $Res call({
    Object? error = freezed,
    Object? event = freezed,
  }) {
    return _then(LikesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as LikesEvent,
    ));
  }

  @override
  $LikesEventCopyWith<$Res> get event {
    return $LikesEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
class _$LikesError implements LikesError {
  const _$LikesError(this.error, this.event);

  @override
  final Exception error;
  @override
  final LikesEvent event;

  @override
  String toString() {
    return 'LikesState.likesError(error: $error, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(event);

  @JsonKey(ignore: true)
  @override
  $LikesErrorCopyWith<LikesError> get copyWith =>
      _$LikesErrorCopyWithImpl<LikesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Profile> users, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(Exception error, LikesEvent event) likesError,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
  }) {
    return likesError(error, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(Exception error, LikesEvent event)? likesError,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    required TResult orElse(),
  }) {
    if (likesError != null) {
      return likesError(error, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(LikesError value) likesError,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
  }) {
    return likesError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(LikesError value)? likesError,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    required TResult orElse(),
  }) {
    if (likesError != null) {
      return likesError(this);
    }
    return orElse();
  }
}

abstract class LikesError implements LikesState {
  const factory LikesError(Exception error, LikesEvent event) = _$LikesError;

  Exception get error => throw _privateConstructorUsedError;
  LikesEvent get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikesErrorCopyWith<LikesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res>;
  $Res call({SwipeMatch swipeMatch, BaseUser userRecommended});
}

/// @nodoc
class _$MatchCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(Match _value, $Res Function(Match) _then)
      : super(_value, (v) => _then(v as Match));

  @override
  Match get _value => super._value as Match;

  @override
  $Res call({
    Object? swipeMatch = freezed,
    Object? userRecommended = freezed,
  }) {
    return _then(Match(
      swipeMatch == freezed
          ? _value.swipeMatch
          : swipeMatch // ignore: cast_nullable_to_non_nullable
              as SwipeMatch,
      userRecommended == freezed
          ? _value.userRecommended
          : userRecommended // ignore: cast_nullable_to_non_nullable
              as BaseUser,
    ));
  }
}

/// @nodoc
class _$Match implements Match {
  const _$Match(this.swipeMatch, this.userRecommended);

  @override
  final SwipeMatch swipeMatch;
  @override
  final BaseUser userRecommended;

  @override
  String toString() {
    return 'LikesState.match(swipeMatch: $swipeMatch, userRecommended: $userRecommended)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Match &&
            (identical(other.swipeMatch, swipeMatch) ||
                const DeepCollectionEquality()
                    .equals(other.swipeMatch, swipeMatch)) &&
            (identical(other.userRecommended, userRecommended) ||
                const DeepCollectionEquality()
                    .equals(other.userRecommended, userRecommended)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swipeMatch) ^
      const DeepCollectionEquality().hash(userRecommended);

  @JsonKey(ignore: true)
  @override
  $MatchCopyWith<Match> get copyWith =>
      _$MatchCopyWithImpl<Match>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Profile> users, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(Exception error, LikesEvent event) likesError,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
  }) {
    return match(swipeMatch, userRecommended);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(Exception error, LikesEvent event)? likesError,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    required TResult orElse(),
  }) {
    if (match != null) {
      return match(swipeMatch, userRecommended);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(LikesError value) likesError,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
  }) {
    return match(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(LikesError value)? likesError,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    required TResult orElse(),
  }) {
    if (match != null) {
      return match(this);
    }
    return orElse();
  }
}

abstract class Match implements LikesState {
  const factory Match(SwipeMatch swipeMatch, BaseUser userRecommended) =
      _$Match;

  SwipeMatch get swipeMatch => throw _privateConstructorUsedError;
  BaseUser get userRecommended => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperlikedCopyWith<$Res> {
  factory $SuperlikedCopyWith(
          Superliked value, $Res Function(Superliked) then) =
      _$SuperlikedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuperlikedCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements $SuperlikedCopyWith<$Res> {
  _$SuperlikedCopyWithImpl(Superliked _value, $Res Function(Superliked) _then)
      : super(_value, (v) => _then(v as Superliked));

  @override
  Superliked get _value => super._value as Superliked;
}

/// @nodoc
class _$Superliked implements Superliked {
  const _$Superliked();

  @override
  String toString() {
    return 'LikesState.superliked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Superliked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Profile> users, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(Exception error, LikesEvent event) likesError,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
  }) {
    return superliked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(Exception error, LikesEvent event)? likesError,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    required TResult orElse(),
  }) {
    if (superliked != null) {
      return superliked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(LikesError value) likesError,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
  }) {
    return superliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(LikesError value)? likesError,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    required TResult orElse(),
  }) {
    if (superliked != null) {
      return superliked(this);
    }
    return orElse();
  }
}

abstract class Superliked implements LikesState {
  const factory Superliked() = _$Superliked;
}
