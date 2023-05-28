// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_privacy_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
    TResult? Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult? Function()? submit,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(Update value)? update,
    TResult? Function(Submit value)? submit,
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
      _$SettingsPrivacyEventCopyWithImpl<$Res, SettingsPrivacyEvent>;
}

/// @nodoc
class _$SettingsPrivacyEventCopyWithImpl<$Res,
        $Val extends SettingsPrivacyEvent>
    implements $SettingsPrivacyEventCopyWith<$Res> {
  _$SettingsPrivacyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckCopyWith<$Res> {
  factory _$$CheckCopyWith(_$Check value, $Res Function(_$Check) then) =
      __$$CheckCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckCopyWithImpl<$Res>
    extends _$SettingsPrivacyEventCopyWithImpl<$Res, _$Check>
    implements _$$CheckCopyWith<$Res> {
  __$$CheckCopyWithImpl(_$Check _value, $Res Function(_$Check) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Check);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
    TResult? Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult? Function()? submit,
  }) {
    return check?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(Update value)? update,
    TResult? Function(Submit value)? submit,
  }) {
    return check?.call(this);
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
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? analytics, bool? errorTracking, bool? sensitiveData});
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$SettingsPrivacyEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analytics = freezed,
    Object? errorTracking = freezed,
    Object? sensitiveData = freezed,
  }) {
    return _then(_$Update(
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorTracking: freezed == errorTracking
          ? _value.errorTracking
          : errorTracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      sensitiveData: freezed == sensitiveData
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
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.errorTracking, errorTracking) ||
                other.errorTracking == errorTracking) &&
            (identical(other.sensitiveData, sensitiveData) ||
                other.sensitiveData == sensitiveData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, analytics, errorTracking, sensitiveData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
    TResult? Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult? Function()? submit,
  }) {
    return update?.call(analytics, errorTracking, sensitiveData);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(Update value)? update,
    TResult? Function(Submit value)? submit,
  }) {
    return update?.call(this);
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
      {final bool? analytics,
      final bool? errorTracking,
      final bool? sensitiveData}) = _$Update;

  bool? get analytics;
  bool? get errorTracking;
  bool? get sensitiveData;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitCopyWith<$Res> {
  factory _$$SubmitCopyWith(_$Submit value, $Res Function(_$Submit) then) =
      __$$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitCopyWithImpl<$Res>
    extends _$SettingsPrivacyEventCopyWithImpl<$Res, _$Submit>
    implements _$$SubmitCopyWith<$Res> {
  __$$SubmitCopyWithImpl(_$Submit _value, $Res Function(_$Submit) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Submit);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
    TResult? Function(
            bool? analytics, bool? errorTracking, bool? sensitiveData)?
        update,
    TResult? Function()? submit,
  }) {
    return submit?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Check value)? check,
    TResult? Function(Update value)? update,
    TResult? Function(Submit value)? submit,
  }) {
    return submit?.call(this);
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
