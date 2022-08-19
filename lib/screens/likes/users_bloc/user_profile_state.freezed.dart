// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  FetchedData fetchedData(Profile profile) {
    return FetchedData(
      profile,
    );
  }

  ApiError apiError(Exception error, UserProfileEvent event) {
    return ApiError(
      error,
      event,
    );
  }
}

/// @nodoc
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile profile) fetchedData,
    required TResult Function(Exception error, UserProfileEvent event) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile profile)? fetchedData,
    TResult Function(Exception error, UserProfileEvent event)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(ApiError value) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.initial()';
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
    required TResult Function(Profile profile) fetchedData,
    required TResult Function(Exception error, UserProfileEvent event) apiError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile profile)? fetchedData,
    TResult Function(Exception error, UserProfileEvent event)? apiError,
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
    required TResult Function(ApiError value) apiError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserProfileState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.loading()';
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
    required TResult Function(Profile profile) fetchedData,
    required TResult Function(Exception error, UserProfileEvent event) apiError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile profile)? fetchedData,
    TResult Function(Exception error, UserProfileEvent event)? apiError,
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
    required TResult Function(ApiError value) apiError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserProfileState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FetchedDataCopyWith<$Res> {
  factory $FetchedDataCopyWith(
          FetchedData value, $Res Function(FetchedData) then) =
      _$FetchedDataCopyWithImpl<$Res>;
  $Res call({Profile profile});
}

/// @nodoc
class _$FetchedDataCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements $FetchedDataCopyWith<$Res> {
  _$FetchedDataCopyWithImpl(
      FetchedData _value, $Res Function(FetchedData) _then)
      : super(_value, (v) => _then(v as FetchedData));

  @override
  FetchedData get _value => super._value as FetchedData;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(FetchedData(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc
class _$FetchedData implements FetchedData {
  const _$FetchedData(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'UserProfileState.fetchedData(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchedData &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      _$FetchedDataCopyWithImpl<FetchedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile profile) fetchedData,
    required TResult Function(Exception error, UserProfileEvent event) apiError,
  }) {
    return fetchedData(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile profile)? fetchedData,
    TResult Function(Exception error, UserProfileEvent event)? apiError,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(ApiError value) apiError,
  }) {
    return fetchedData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (fetchedData != null) {
      return fetchedData(this);
    }
    return orElse();
  }
}

abstract class FetchedData implements UserProfileState {
  const factory FetchedData(Profile profile) = _$FetchedData;

  Profile get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchedDataCopyWith<FetchedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({Exception error, UserProfileEvent event});

  $UserProfileEventCopyWith<$Res> get event;
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(ApiError _value, $Res Function(ApiError) _then)
      : super(_value, (v) => _then(v as ApiError));

  @override
  ApiError get _value => super._value as ApiError;

  @override
  $Res call({
    Object? error = freezed,
    Object? event = freezed,
  }) {
    return _then(ApiError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as UserProfileEvent,
    ));
  }

  @override
  $UserProfileEventCopyWith<$Res> get event {
    return $UserProfileEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
class _$ApiError implements ApiError {
  const _$ApiError(this.error, this.event);

  @override
  final Exception error;
  @override
  final UserProfileEvent event;

  @override
  String toString() {
    return 'UserProfileState.apiError(error: $error, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiError &&
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
  $ApiErrorCopyWith<ApiError> get copyWith =>
      _$ApiErrorCopyWithImpl<ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile profile) fetchedData,
    required TResult Function(Exception error, UserProfileEvent event) apiError,
  }) {
    return apiError(error, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile profile)? fetchedData,
    TResult Function(Exception error, UserProfileEvent event)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchedData value) fetchedData,
    required TResult Function(ApiError value) apiError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FetchedData value)? fetchedData,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements UserProfileState {
  const factory ApiError(Exception error, UserProfileEvent event) = _$ApiError;

  Exception get error => throw _privateConstructorUsedError;
  UserProfileEvent get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
