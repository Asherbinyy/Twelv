// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'explorer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExplorerStateTearOff {
  const _$ExplorerStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading({required bool delay}) {
    return Loading(
      delay: delay,
    );
  }

  ExplorerError explorerError(Exception error, ExplorerEvent event) {
    return ExplorerError(
      error,
      event,
    );
  }

  FetchedData fetchedData(Profiles userRecommendations,
      {bool isAfterReportingProfile = false}) {
    return FetchedData(
      userRecommendations,
      isAfterReportingProfile: isAfterReportingProfile,
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

  NoLocation noLocation() {
    return const NoLocation();
  }
}

/// @nodoc
const $ExplorerState = _$ExplorerStateTearOff();

/// @nodoc
mixin _$ExplorerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorerStateCopyWith<$Res> {
  factory $ExplorerStateCopyWith(
          ExplorerState value, $Res Function(ExplorerState) then) =
      _$ExplorerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExplorerStateCopyWithImpl<$Res>
    implements $ExplorerStateCopyWith<$Res> {
  _$ExplorerStateCopyWithImpl(this._value, this._then);

  final ExplorerState _value;
  // ignore: unused_field
  final $Res Function(ExplorerState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
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
    return 'ExplorerState.initial()';
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
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
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
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ExplorerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({bool delay});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? delay = freezed,
  }) {
    return _then(Loading(
      delay: delay == freezed
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading({required this.delay});

  @override
  final bool delay;

  @override
  String toString() {
    return 'ExplorerState.loading(delay: $delay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.delay, delay) ||
                const DeepCollectionEquality().equals(other.delay, delay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(delay);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) {
    return loading(delay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(delay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ExplorerState {
  const factory Loading({required bool delay}) = _$Loading;

  bool get delay => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorerErrorCopyWith<$Res> {
  factory $ExplorerErrorCopyWith(
          ExplorerError value, $Res Function(ExplorerError) then) =
      _$ExplorerErrorCopyWithImpl<$Res>;
  $Res call({Exception error, ExplorerEvent event});

  $ExplorerEventCopyWith<$Res> get event;
}

/// @nodoc
class _$ExplorerErrorCopyWithImpl<$Res>
    extends _$ExplorerStateCopyWithImpl<$Res>
    implements $ExplorerErrorCopyWith<$Res> {
  _$ExplorerErrorCopyWithImpl(
      ExplorerError _value, $Res Function(ExplorerError) _then)
      : super(_value, (v) => _then(v as ExplorerError));

  @override
  ExplorerError get _value => super._value as ExplorerError;

  @override
  $Res call({
    Object? error = freezed,
    Object? event = freezed,
  }) {
    return _then(ExplorerError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ExplorerEvent,
    ));
  }

  @override
  $ExplorerEventCopyWith<$Res> get event {
    return $ExplorerEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
class _$ExplorerError implements ExplorerError {
  const _$ExplorerError(this.error, this.event);

  @override
  final Exception error;
  @override
  final ExplorerEvent event;

  @override
  String toString() {
    return 'ExplorerState.explorerError(error: $error, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExplorerError &&
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
  $ExplorerErrorCopyWith<ExplorerError> get copyWith =>
      _$ExplorerErrorCopyWithImpl<ExplorerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) {
    return explorerError(error, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (explorerError != null) {
      return explorerError(error, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) {
    return explorerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (explorerError != null) {
      return explorerError(this);
    }
    return orElse();
  }
}

abstract class ExplorerError implements ExplorerState {
  const factory ExplorerError(Exception error, ExplorerEvent event) =
      _$ExplorerError;

  Exception get error => throw _privateConstructorUsedError;
  ExplorerEvent get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplorerErrorCopyWith<ExplorerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchedDataCopyWith<$Res> {
  factory $FetchedDataCopyWith(
          FetchedData value, $Res Function(FetchedData) then) =
      _$FetchedDataCopyWithImpl<$Res>;
  $Res call({Profiles userRecommendations, bool isAfterReportingProfile});
}

/// @nodoc
class _$FetchedDataCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
    implements $FetchedDataCopyWith<$Res> {
  _$FetchedDataCopyWithImpl(
      FetchedData _value, $Res Function(FetchedData) _then)
      : super(_value, (v) => _then(v as FetchedData));

  @override
  FetchedData get _value => super._value as FetchedData;

  @override
  $Res call({
    Object? userRecommendations = freezed,
    Object? isAfterReportingProfile = freezed,
  }) {
    return _then(FetchedData(
      userRecommendations == freezed
          ? _value.userRecommendations
          : userRecommendations // ignore: cast_nullable_to_non_nullable
              as Profiles,
      isAfterReportingProfile: isAfterReportingProfile == freezed
          ? _value.isAfterReportingProfile
          : isAfterReportingProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$FetchedData implements FetchedData {
  const _$FetchedData(this.userRecommendations,
      {this.isAfterReportingProfile = false});

  @override
  final Profiles userRecommendations;
  @JsonKey(defaultValue: false)
  @override
  final bool isAfterReportingProfile;

  @override
  String toString() {
    return 'ExplorerState.fetchedData(userRecommendations: $userRecommendations, isAfterReportingProfile: $isAfterReportingProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchedData &&
            (identical(other.userRecommendations, userRecommendations) ||
                const DeepCollectionEquality()
                    .equals(other.userRecommendations, userRecommendations)) &&
            (identical(
                    other.isAfterReportingProfile, isAfterReportingProfile) ||
                const DeepCollectionEquality().equals(
                    other.isAfterReportingProfile, isAfterReportingProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userRecommendations) ^
      const DeepCollectionEquality().hash(isAfterReportingProfile);

  @JsonKey(ignore: true)
  @override
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      _$FetchedDataCopyWithImpl<FetchedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) {
    return fetchedData(userRecommendations, isAfterReportingProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(userRecommendations, isAfterReportingProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) {
    return fetchedData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(this);
    }
    return orElse();
  }
}

abstract class FetchedData implements ExplorerState {
  const factory FetchedData(Profiles userRecommendations,
      {bool isAfterReportingProfile}) = _$FetchedData;

  Profiles get userRecommendations => throw _privateConstructorUsedError;
  bool get isAfterReportingProfile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res>;
  $Res call({SwipeMatch swipeMatch, BaseUser userRecommended});
}

/// @nodoc
class _$MatchCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
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
    return 'ExplorerState.match(swipeMatch: $swipeMatch, userRecommended: $userRecommended)';
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
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) {
    return match(swipeMatch, userRecommended);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
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
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) {
    return match(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (match != null) {
      return match(this);
    }
    return orElse();
  }
}

abstract class Match implements ExplorerState {
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
class _$SuperlikedCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
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
    return 'ExplorerState.superliked()';
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
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) {
    return superliked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
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
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) {
    return superliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (superliked != null) {
      return superliked(this);
    }
    return orElse();
  }
}

abstract class Superliked implements ExplorerState {
  const factory Superliked() = _$Superliked;
}

/// @nodoc
abstract class $NoLocationCopyWith<$Res> {
  factory $NoLocationCopyWith(
          NoLocation value, $Res Function(NoLocation) then) =
      _$NoLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoLocationCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
    implements $NoLocationCopyWith<$Res> {
  _$NoLocationCopyWithImpl(NoLocation _value, $Res Function(NoLocation) _then)
      : super(_value, (v) => _then(v as NoLocation));

  @override
  NoLocation get _value => super._value as NoLocation;
}

/// @nodoc
class _$NoLocation implements NoLocation {
  const _$NoLocation();

  @override
  String toString() {
    return 'ExplorerState.noLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool delay) loading,
    required TResult Function(Exception error, ExplorerEvent event)
        explorerError,
    required TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)
        fetchedData,
    required TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)
        match,
    required TResult Function() superliked,
    required TResult Function() noLocation,
  }) {
    return noLocation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool delay)? loading,
    TResult Function(Exception error, ExplorerEvent event)? explorerError,
    TResult Function(
            Profiles userRecommendations, bool isAfterReportingProfile)?
        fetchedData,
    TResult Function(SwipeMatch swipeMatch, BaseUser userRecommended)? match,
    TResult Function()? superliked,
    TResult Function()? noLocation,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ExplorerError value) explorerError,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(Match value) match,
    required TResult Function(Superliked value) superliked,
    required TResult Function(NoLocation value) noLocation,
  }) {
    return noLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ExplorerError value)? explorerError,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(Match value)? match,
    TResult Function(Superliked value)? superliked,
    TResult Function(NoLocation value)? noLocation,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation(this);
    }
    return orElse();
  }
}

abstract class NoLocation implements ExplorerState {
  const factory NoLocation() = _$NoLocation;
}
