// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_privacy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsPrivacyStateTearOff {
  const _$SettingsPrivacyStateTearOff();

  Loading loading() {
    return const Loading();
  }

  ApiError apiError(Exception error) {
    return ApiError(
      error,
    );
  }

  Initial initial() {
    return const Initial();
  }

  Succeeded succeeded() {
    return const Succeeded();
  }

  Data data(UserConsent data) {
    return Data(
      data,
    );
  }
}

/// @nodoc
const $SettingsPrivacyState = _$SettingsPrivacyStateTearOff();

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
      _$SettingsPrivacyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsPrivacyStateCopyWithImpl<$Res>
    implements $SettingsPrivacyStateCopyWith<$Res> {
  _$SettingsPrivacyStateCopyWithImpl(this._value, this._then);

  final SettingsPrivacyState _value;
  // ignore: unused_field
  final $Res Function(SettingsPrivacyState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$SettingsPrivacyStateCopyWithImpl<$Res>
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
    return 'SettingsPrivacyState.loading()';
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
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) {
    return loading();
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
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res>
    extends _$SettingsPrivacyStateCopyWithImpl<$Res>
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
    return 'SettingsPrivacyState.apiError(error: $error)';
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
    required TResult Function() initial,
    required TResult Function() succeeded,
    required TResult Function(UserConsent data) data,
  }) {
    return apiError(error);
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
  const factory ApiError(Exception error) = _$ApiError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$SettingsPrivacyStateCopyWithImpl<$Res>
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
    return 'SettingsPrivacyState.initial()';
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
abstract class $SucceededCopyWith<$Res> {
  factory $SucceededCopyWith(Succeeded value, $Res Function(Succeeded) then) =
      _$SucceededCopyWithImpl<$Res>;
}

/// @nodoc
class _$SucceededCopyWithImpl<$Res>
    extends _$SettingsPrivacyStateCopyWithImpl<$Res>
    implements $SucceededCopyWith<$Res> {
  _$SucceededCopyWithImpl(Succeeded _value, $Res Function(Succeeded) _then)
      : super(_value, (v) => _then(v as Succeeded));

  @override
  Succeeded get _value => super._value as Succeeded;
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
    return identical(this, other) || (other is Succeeded);
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
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({UserConsent data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$SettingsPrivacyStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Data(
      data == freezed
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
        (other is Data &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

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
  const factory Data(UserConsent data) = _$Data;

  UserConsent get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
