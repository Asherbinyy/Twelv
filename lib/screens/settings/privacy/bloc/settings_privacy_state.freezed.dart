// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_privacy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsPrivacyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function()? initial,
    TResult? Function()? succeeded,
    TResult? Function(UserConsent data)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function()? initial,
    TResult Function()? succeeded,
    TResult Function(UserConsent data)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
    required TResult Function(Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
    TResult? Function(Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPrivacyStateCopyWith<$Res> {
  factory $SettingsPrivacyStateCopyWith(SettingsPrivacyState value,
          $Res Function(SettingsPrivacyState) then) =
      _$SettingsPrivacyStateCopyWithImpl<$Res, SettingsPrivacyState>;
}

/// @nodoc
class _$SettingsPrivacyStateCopyWithImpl<$Res,
        $Val extends SettingsPrivacyState>
    implements $SettingsPrivacyStateCopyWith<$Res> {
  _$SettingsPrivacyStateCopyWithImpl(this._value, this._then);

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
    extends _$SettingsPrivacyStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SettingsPrivacyState.loading()';
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
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function()? initial,
    TResult? Function()? succeeded,
    TResult? Function(UserConsent data)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function()? initial,
    TResult Function()? succeeded,
    TResult Function(UserConsent data)? data,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
    required TResult Function(Data value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
    TResult? Function(Data value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SettingsPrivacyState {
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
    extends _$SettingsPrivacyStateCopyWithImpl<$Res, _$ApiError>
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
    return 'SettingsPrivacyState.apiError(error: $error)';
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
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) {
    return apiError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function()? initial,
    TResult? Function()? succeeded,
    TResult? Function(UserConsent data)? data,
  }) {
    return apiError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function()? initial,
    TResult Function()? succeeded,
    TResult Function(UserConsent data)? data,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
    required TResult Function(Data value) data,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
    TResult? Function(Data value)? data,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements SettingsPrivacyState {
  const factory ApiError(final Exception error) = _$ApiError;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SettingsPrivacyStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SettingsPrivacyState.initial()';
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
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function()? initial,
    TResult? Function()? succeeded,
    TResult? Function(UserConsent data)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function()? initial,
    TResult Function()? succeeded,
    TResult Function(UserConsent data)? data,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
    required TResult Function(Data value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
    TResult? Function(Data value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingsPrivacyState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$SucceededCopyWith<$Res> {
  factory _$$SucceededCopyWith(
          _$Succeeded value, $Res Function(_$Succeeded) then) =
      __$$SucceededCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SucceededCopyWithImpl<$Res>
    extends _$SettingsPrivacyStateCopyWithImpl<$Res, _$Succeeded>
    implements _$$SucceededCopyWith<$Res> {
  __$$SucceededCopyWithImpl(
      _$Succeeded _value, $Res Function(_$Succeeded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Succeeded implements Succeeded {
  const _$Succeeded();

  @override
  String toString() {
    return 'SettingsPrivacyState.succeeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Succeeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) {
    return succeeded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function()? initial,
    TResult? Function()? succeeded,
    TResult? Function(UserConsent data)? data,
  }) {
    return succeeded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function()? initial,
    TResult Function()? succeeded,
    TResult Function(UserConsent data)? data,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
    required TResult Function(Data value) data,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
    TResult? Function(Data value)? data,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class Succeeded implements SettingsPrivacyState {
  const factory Succeeded() = _$Succeeded;
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @useResult
  $Res call({UserConsent data});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SettingsPrivacyStateCopyWithImpl<$Res, _$Data>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$Data(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserConsent,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.data);

  @override
  final UserConsent data;

  @override
  String toString() {
    return 'SettingsPrivacyState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Exception error) apiError,
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Exception error)? apiError,
    TResult? Function()? initial,
    TResult? Function()? succeeded,
    TResult? Function(UserConsent data)? data,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Exception error)? apiError,
    TResult Function()? initial,
    TResult Function()? succeeded,
    TResult Function(UserConsent data)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
    required TResult Function(Initial value) initial,
    required TResult Function(Succeeded value) succeeded,
    required TResult Function(Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
    TResult? Function(Initial value)? initial,
    TResult? Function(Succeeded value)? succeeded,
    TResult? Function(Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    TResult Function(Initial value)? initial,
    TResult Function(Succeeded value)? succeeded,
    TResult Function(Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements SettingsPrivacyState {
  const factory Data(final UserConsent data) = _$Data;

  UserConsent get data;
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
