// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsNotificationsStateTearOff {
  const _$SettingsNotificationsStateTearOff();

  Loading loading() {
    return const Loading();
  }

  ApiError apiError(Exception error) {
    return ApiError(
      error,
    );
  }

  Settings settings(NotificationSettings notificationSettings) {
    return Settings(
      notificationSettings,
    );
  }
}

/// @nodoc
const $SettingsNotificationsState = _$SettingsNotificationsStateTearOff();

/// @nodoc
mixin _$SettingsNotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(NotificationSettings notificationSettings)
        settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(NotificationSettings notificationSettings)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Settings value) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Settings value)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsNotificationsStateCopyWith<$Res> {
  factory $SettingsNotificationsStateCopyWith(SettingsNotificationsState value,
          $Res Function(SettingsNotificationsState) then) =
      _$SettingsNotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsNotificationsStateCopyWithImpl<$Res>
    implements $SettingsNotificationsStateCopyWith<$Res> {
  _$SettingsNotificationsStateCopyWithImpl(this._value, this._then);

  final SettingsNotificationsState _value;
  // ignore: unused_field
  final $Res Function(SettingsNotificationsState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res>
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
    return 'SettingsNotificationsState.loading()';
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
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(NotificationSettings notificationSettings)
        settings,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(NotificationSettings notificationSettings)? settings,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Settings value) settings,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Settings value)? settings,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SettingsNotificationsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(ApiError _value, $Res Function(ApiError) _then)
      : super(_value, (v) => _then(v as ApiError));

  @override
  ApiError get _value => super._value as ApiError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ApiError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc
class _$ApiError implements ApiError {
  const _$ApiError(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'SettingsNotificationsState.apiError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ApiErrorCopyWith<ApiError> get copyWith =>
      _$ApiErrorCopyWithImpl<ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(NotificationSettings notificationSettings)
        settings,
  }) {
    return apiError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(NotificationSettings notificationSettings)? settings,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Settings value) settings,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Settings value)? settings,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements SettingsNotificationsState {
  const factory ApiError(Exception error) = _$ApiError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call({NotificationSettings notificationSettings});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(Settings _value, $Res Function(Settings) _then)
      : super(_value, (v) => _then(v as Settings));

  @override
  Settings get _value => super._value as Settings;

  @override
  $Res call({
    Object? notificationSettings = freezed,
  }) {
    return _then(Settings(
      notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
    ));
  }
}

/// @nodoc
class _$Settings implements Settings {
  const _$Settings(this.notificationSettings);

  @override
  final NotificationSettings notificationSettings;

  @override
  String toString() {
    return 'SettingsNotificationsState.settings(notificationSettings: $notificationSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Settings &&
            (identical(other.notificationSettings, notificationSettings) ||
                const DeepCollectionEquality()
                    .equals(other.notificationSettings, notificationSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationSettings);

  @JsonKey(ignore: true)
  @override
  $SettingsCopyWith<Settings> get copyWith =>
      _$SettingsCopyWithImpl<Settings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function(NotificationSettings notificationSettings)
        settings,
  }) {
    return settings(notificationSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function(NotificationSettings notificationSettings)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(notificationSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Settings value) settings,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Settings value)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class Settings implements SettingsNotificationsState {
  const factory Settings(NotificationSettings notificationSettings) =
      _$Settings;

  NotificationSettings get notificationSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
