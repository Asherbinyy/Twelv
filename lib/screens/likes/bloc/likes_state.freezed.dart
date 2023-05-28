// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'likes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult? Function(Exception error, LikesEvent event)? likesError,
    TResult? Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult? Function()? superliked,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchedData value)? fetchedData,
    TResult? Function(LikesError value)? likesError,
    TResult? Function(Match value)? match,
    TResult? Function(Superliked value)? superliked,
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
      _$LikesStateCopyWithImpl<$Res, LikesState>;
}

/// @nodoc
class _$LikesStateCopyWithImpl<$Res, $Val extends LikesState>
    implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult? Function(Exception error, LikesEvent event)? likesError,
    TResult? Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult? Function()? superliked,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchedData value)? fetchedData,
    TResult? Function(LikesError value)? likesError,
    TResult? Function(Match value)? match,
    TResult? Function(Superliked value)? superliked,
  }) {
    return initial?.call(this);
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
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult? Function(Exception error, LikesEvent event)? likesError,
    TResult? Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult? Function()? superliked,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchedData value)? fetchedData,
    TResult? Function(LikesError value)? likesError,
    TResult? Function(Match value)? match,
    TResult? Function(Superliked value)? superliked,
  }) {
    return loading?.call(this);
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
abstract class _$$FetchedDataCopyWith<$Res> {
  factory _$$FetchedDataCopyWith(
          _$FetchedData value, $Res Function(_$FetchedData) then) =
      __$$FetchedDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Profile> users, bool isAfterReportingProfile});
}

/// @nodoc
class __$$FetchedDataCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$FetchedData>
    implements _$$FetchedDataCopyWith<$Res> {
  __$$FetchedDataCopyWithImpl(
      _$FetchedData _value, $Res Function(_$FetchedData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isAfterReportingProfile = null,
  }) {
    return _then(_$FetchedData(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      isAfterReportingProfile: null == isAfterReportingProfile
          ? _value.isAfterReportingProfile
          : isAfterReportingProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchedData implements FetchedData {
  const _$FetchedData(final List<Profile> users,
      {this.isAfterReportingProfile = false})
      : _users = users;

  final List<Profile> _users;
  @override
  List<Profile> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final bool isAfterReportingProfile;

  @override
  String toString() {
    return 'LikesState.fetchedData(users: $users, isAfterReportingProfile: $isAfterReportingProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedData &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(
                    other.isAfterReportingProfile, isAfterReportingProfile) ||
                other.isAfterReportingProfile == isAfterReportingProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), isAfterReportingProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedDataCopyWith<_$FetchedData> get copyWith =>
      __$$FetchedDataCopyWithImpl<_$FetchedData>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult? Function(Exception error, LikesEvent event)? likesError,
    TResult? Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult? Function()? superliked,
  }) {
    return fetchedData?.call(users, isAfterReportingProfile);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchedData value)? fetchedData,
    TResult? Function(LikesError value)? likesError,
    TResult? Function(Match value)? match,
    TResult? Function(Superliked value)? superliked,
  }) {
    return fetchedData?.call(this);
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
  const factory FetchedData(final List<Profile> users,
      {final bool isAfterReportingProfile}) = _$FetchedData;

  List<Profile> get users;
  bool get isAfterReportingProfile;
  @JsonKey(ignore: true)
  _$$FetchedDataCopyWith<_$FetchedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikesErrorCopyWith<$Res> {
  factory _$$LikesErrorCopyWith(
          _$LikesError value, $Res Function(_$LikesError) then) =
      __$$LikesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error, LikesEvent event});

  $LikesEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$LikesErrorCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$LikesError>
    implements _$$LikesErrorCopyWith<$Res> {
  __$$LikesErrorCopyWithImpl(
      _$LikesError _value, $Res Function(_$LikesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? event = null,
  }) {
    return _then(_$LikesError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as LikesEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$LikesError &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikesErrorCopyWith<_$LikesError> get copyWith =>
      __$$LikesErrorCopyWithImpl<_$LikesError>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult? Function(Exception error, LikesEvent event)? likesError,
    TResult? Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult? Function()? superliked,
  }) {
    return likesError?.call(error, event);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchedData value)? fetchedData,
    TResult? Function(LikesError value)? likesError,
    TResult? Function(Match value)? match,
    TResult? Function(Superliked value)? superliked,
  }) {
    return likesError?.call(this);
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
  const factory LikesError(final Exception error, final LikesEvent event) =
      _$LikesError;

  Exception get error;
  LikesEvent get event;
  @JsonKey(ignore: true)
  _$$LikesErrorCopyWith<_$LikesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MatchCopyWith<$Res> {
  factory _$$MatchCopyWith(_$Match value, $Res Function(_$Match) then) =
      __$$MatchCopyWithImpl<$Res>;
  @useResult
  $Res call({SwipeMatch swipeMatch, BaseUser userRecommended});
}

/// @nodoc
class __$$MatchCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$Match>
    implements _$$MatchCopyWith<$Res> {
  __$$MatchCopyWithImpl(_$Match _value, $Res Function(_$Match) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swipeMatch = null,
    Object? userRecommended = null,
  }) {
    return _then(_$Match(
      null == swipeMatch
          ? _value.swipeMatch
          : swipeMatch // ignore: cast_nullable_to_non_nullable
              as SwipeMatch,
      null == userRecommended
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
        (other.runtimeType == runtimeType &&
            other is _$Match &&
            (identical(other.swipeMatch, swipeMatch) ||
                other.swipeMatch == swipeMatch) &&
            (identical(other.userRecommended, userRecommended) ||
                other.userRecommended == userRecommended));
  }

  @override
  int get hashCode => Object.hash(runtimeType, swipeMatch, userRecommended);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchCopyWith<_$Match> get copyWith =>
      __$$MatchCopyWithImpl<_$Match>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult? Function(Exception error, LikesEvent event)? likesError,
    TResult? Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult? Function()? superliked,
  }) {
    return match?.call(swipeMatch, userRecommended);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchedData value)? fetchedData,
    TResult? Function(LikesError value)? likesError,
    TResult? Function(Match value)? match,
    TResult? Function(Superliked value)? superliked,
  }) {
    return match?.call(this);
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
  const factory Match(
      final SwipeMatch swipeMatch, final BaseUser userRecommended) = _$Match;

  SwipeMatch get swipeMatch;
  BaseUser get userRecommended;
  @JsonKey(ignore: true)
  _$$MatchCopyWith<_$Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuperlikedCopyWith<$Res> {
  factory _$$SuperlikedCopyWith(
          _$Superliked value, $Res Function(_$Superliked) then) =
      __$$SuperlikedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuperlikedCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$Superliked>
    implements _$$SuperlikedCopyWith<$Res> {
  __$$SuperlikedCopyWithImpl(
      _$Superliked _value, $Res Function(_$Superliked) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Superliked);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Profile> users, bool isAfterReportingProfile)?
        fetchedData,
    TResult? Function(Exception error, LikesEvent event)? likesError,
    TResult? Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult? Function()? superliked,
  }) {
    return superliked?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchedData value)? fetchedData,
    TResult? Function(LikesError value)? likesError,
    TResult? Function(Match value)? match,
    TResult? Function(Superliked value)? superliked,
  }) {
    return superliked?.call(this);
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
