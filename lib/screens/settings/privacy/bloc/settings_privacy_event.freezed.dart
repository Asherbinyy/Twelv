// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_privacy_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsPrivacyEventTearOff {
  const _$SettingsPrivacyEventTearOff();

  Check check() {
    return const Check();
  }

  Update update({bool? analytics, bool? errorTracking, bool? sensitiveData}) {
    return Update(
      analytics: analytics,
      errorTracking: errorTracking,
      sensitiveData: sensitiveData,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

/// @nodoc
const $SettingsPrivacyEvent = _$SettingsPrivacyEventTearOff();

/// @nodoc
mixin _$SettingsPrivacyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)
        update,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(Update value) update,
    required TResult Function(Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(Update value)? update,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPrivacyEventCopyWith<$Res> {
  factory $SettingsPrivacyEventCopyWith(SettingsPrivacyEvent value,
          $Res Function(SettingsPrivacyEvent) then) =
      _$SettingsPrivacyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsPrivacyEventCopyWithImpl<$Res>
    implements $SettingsPrivacyEventCopyWith<$Res> {
  _$SettingsPrivacyEventCopyWithImpl(this._value, this._then);

  final SettingsPrivacyEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsPrivacyEvent) _then;
}

/// @nodoc
abstract class $CheckCopyWith<$Res> {
  factory $CheckCopyWith(Check value, $Res Function(Check) then) =
      _$CheckCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckCopyWithImpl<$Res> extends _$SettingsPrivacyEventCopyWithImpl<$Res>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(Check _value, $Res Function(Check) _then)
      : super(_value, (v) => _then(v as Check));

  @override
  Check get _value => super._value as Check;
}

/// @nodoc
class _$Check implements Check {
  const _$Check();

  @override
  String toString() {
    return 'SettingsPrivacyEvent.check()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Check);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)
        update,
    required TResult Function() submit,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(Update value) update,
    required TResult Function(Submit value) submit,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(Update value)? update,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class Check implements SettingsPrivacyEvent {
  const factory Check() = _$Check;
}

/// @nodoc
abstract class $UpdateCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
  $Res call({bool? analytics, bool? errorTracking, bool? sensitiveData});
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res>
    extends _$SettingsPrivacyEventCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;

  @override
  $Res call({
    Object? analytics = freezed,
    Object? errorTracking = freezed,
    Object? sensitiveData = freezed,
  }) {
    return _then(Update(
      analytics: analytics == freezed
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorTracking: errorTracking == freezed
          ? _value.errorTracking
          : errorTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      sensitiveData: sensitiveData == freezed
          ? _value.sensitiveData
          : sensitiveData // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
class _$Update implements Update {
  const _$Update({this.analytics, this.errorTracking, this.sensitiveData});

  @override
  final bool? analytics;
  @override
  final bool? errorTracking;
  @override
  final bool? sensitiveData;

  @override
  String toString() {
    return 'SettingsPrivacyEvent.update(analytics: $analytics, errorTracking: $errorTracking, sensitiveData: $sensitiveData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Update &&
            (identical(other.analytics, analytics) ||
                const DeepCollectionEquality()
                    .equals(other.analytics, analytics)) &&
            (identical(other.errorTracking, errorTracking) ||
                const DeepCollectionEquality()
                    .equals(other.errorTracking, errorTracking)) &&
            (identical(other.sensitiveData, sensitiveData) ||
                const DeepCollectionEquality()
                    .equals(other.sensitiveData, sensitiveData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(analytics) ^
      const DeepCollectionEquality().hash(errorTracking) ^
      const DeepCollectionEquality().hash(sensitiveData);

  @JsonKey(ignore: true)
  @override
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)
        update,
    required TResult Function() submit,
  }) {
    return update(analytics, errorTracking, sensitiveData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(analytics, errorTracking, sensitiveData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(Update value) update,
    required TResult Function(Submit value) submit,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(Update value)? update,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements SettingsPrivacyEvent {
  const factory Update(
      {bool? analytics, bool? errorTracking, bool? sensitiveData}) = _$Update;

  bool? get analytics => throw _privateConstructorUsedError;
  bool? get errorTracking => throw _privateConstructorUsedError;
  bool? get sensitiveData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCopyWith<Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res>
    extends _$SettingsPrivacyEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;
}

/// @nodoc
class _$Submit implements Submit {
  const _$Submit();

  @override
  String toString() {
    return 'SettingsPrivacyEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)
        update,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Check value) check,
    required TResult Function(Update value) update,
    required TResult Function(Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Check value)? check,
    TResult Function(Update value)? update,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements SettingsPrivacyEvent {
  const factory Submit() = _$Submit;
}
