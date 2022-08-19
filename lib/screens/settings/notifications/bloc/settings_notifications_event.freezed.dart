// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsNotificationsEventTearOff {
  const _$SettingsNotificationsEventTearOff();

  Initial initial() {
    return const Initial();
  }

  Update update({required NotificationSettings notificationSettings}) {
    return Update(
      notificationSettings: notificationSettings,
    );
  }
}

/// @nodoc
const $SettingsNotificationsEvent = _$SettingsNotificationsEventTearOff();

/// @nodoc
mixin _$SettingsNotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NotificationSettings notificationSettings) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotificationSettings notificationSettings)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsNotificationsEventCopyWith<$Res> {
  factory $SettingsNotificationsEventCopyWith(SettingsNotificationsEvent value,
          $Res Function(SettingsNotificationsEvent) then) =
      _$SettingsNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsNotificationsEventCopyWithImpl<$Res>
    implements $SettingsNotificationsEventCopyWith<$Res> {
  _$SettingsNotificationsEventCopyWithImpl(this._value, this._then);

  final SettingsNotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsNotificationsEvent) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res>
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
    return 'SettingsNotificationsEvent.initial()';
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
    required TResult Function(NotificationSettings notificationSettings) update,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotificationSettings notificationSettings)? update,
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
    required TResult Function(Update value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingsNotificationsEvent {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UpdateCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
  $Res call({NotificationSettings notificationSettings});
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res>
    extends _$SettingsNotificationsEventCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;

  @override
  $Res call({
    Object? notificationSettings = freezed,
  }) {
    return _then(Update(
      notificationSettings: notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
    ));
  }
}

/// @nodoc
class _$Update implements Update {
  const _$Update({required this.notificationSettings});

  @override
  final NotificationSettings notificationSettings;

  @override
  String toString() {
    return 'SettingsNotificationsEvent.update(notificationSettings: $notificationSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Update &&
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
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NotificationSettings notificationSettings) update,
  }) {
    return update(notificationSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NotificationSettings notificationSettings)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(notificationSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements SettingsNotificationsEvent {
  const factory Update({required NotificationSettings notificationSettings}) =
      _$Update;

  NotificationSettings get notificationSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCopyWith<Update> get copyWith => throw _privateConstructorUsedError;
}
