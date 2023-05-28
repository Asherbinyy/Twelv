// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(NotificationSettings notificationSettings)? settings,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Settings value)? settings,
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
      _$SettingsNotificationsStateCopyWithImpl<$Res,
          SettingsNotificationsState>;
}

/// @nodoc
class _$SettingsNotificationsStateCopyWithImpl<$Res,
        $Val extends SettingsNotificationsState>
    implements $SettingsNotificationsStateCopyWith<$Res> {
  _$SettingsNotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(NotificationSettings notificationSettings)? settings,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Settings value)? settings,
  }) {
    return loading?.call(this);
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
abstract class _$$ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorCopyWith(
          _$ApiError value, $Res Function(_$ApiError) then) =
      __$$ApiErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ApiErrorCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res, _$ApiError>
    implements _$$ApiErrorCopyWith<$Res> {
  __$$ApiErrorCopyWithImpl(_$ApiError _value, $Res Function(_$ApiError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ApiError(
      null == error
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
        (other.runtimeType == runtimeType &&
            other is _$ApiError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      __$$ApiErrorCopyWithImpl<_$ApiError>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(NotificationSettings notificationSettings)? settings,
  }) {
    return apiError?.call(error);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Settings value)? settings,
  }) {
    return apiError?.call(this);
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
  const factory ApiError(final Exception error) = _$ApiError;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsCopyWith<$Res> {
  factory _$$SettingsCopyWith(
          _$Settings value, $Res Function(_$Settings) then) =
      __$$SettingsCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationSettings notificationSettings});
}

/// @nodoc
class __$$SettingsCopyWithImpl<$Res>
    extends _$SettingsNotificationsStateCopyWithImpl<$Res, _$Settings>
    implements _$$SettingsCopyWith<$Res> {
  __$$SettingsCopyWithImpl(_$Settings _value, $Res Function(_$Settings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationSettings = null,
  }) {
    return _then(_$Settings(
      null == notificationSettings
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
        (other.runtimeType == runtimeType &&
            other is _$Settings &&
            (identical(other.notificationSettings, notificationSettings) ||
                other.notificationSettings == notificationSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsCopyWith<_$Settings> get copyWith =>
      __$$SettingsCopyWithImpl<_$Settings>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function(NotificationSettings notificationSettings)? settings,
  }) {
    return settings?.call(notificationSettings);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Settings value)? settings,
  }) {
    return settings?.call(this);
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
  const factory Settings(final NotificationSettings notificationSettings) =
      _$Settings;

  NotificationSettings get notificationSettings;
  @JsonKey(ignore: true)
  _$$SettingsCopyWith<_$Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
