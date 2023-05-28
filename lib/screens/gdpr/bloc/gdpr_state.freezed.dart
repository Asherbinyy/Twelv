// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gdpr_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GdprState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() notAccepted,
    required TResult Function() loading,
    required TResult Function(Exception e) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? notAccepted,
    TResult? Function()? loading,
    TResult? Function(Exception e)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? notAccepted,
    TResult Function()? loading,
    TResult Function(Exception e)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Accepted value) accepted,
    required TResult Function(NotAccepted value) notAccepted,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Accepted value)? accepted,
    TResult? Function(NotAccepted value)? notAccepted,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Accepted value)? accepted,
    TResult Function(NotAccepted value)? notAccepted,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdprStateCopyWith<$Res> {
  factory $GdprStateCopyWith(GdprState value, $Res Function(GdprState) then) =
      _$GdprStateCopyWithImpl<$Res, GdprState>;
}

/// @nodoc
class _$GdprStateCopyWithImpl<$Res, $Val extends GdprState>
    implements $GdprStateCopyWith<$Res> {
  _$GdprStateCopyWithImpl(this._value, this._then);

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
    extends _$GdprStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'GdprState.initial()';
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
    required TResult Function() accepted,
    required TResult Function() notAccepted,
    required TResult Function() loading,
    required TResult Function(Exception e) apiError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? notAccepted,
    TResult? Function()? loading,
    TResult? Function(Exception e)? apiError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? notAccepted,
    TResult Function()? loading,
    TResult Function(Exception e)? apiError,
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
    required TResult Function(Accepted value) accepted,
    required TResult Function(NotAccepted value) notAccepted,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Accepted value)? accepted,
    TResult? Function(NotAccepted value)? notAccepted,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Accepted value)? accepted,
    TResult Function(NotAccepted value)? notAccepted,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GdprState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$AcceptedCopyWith<$Res> {
  factory _$$AcceptedCopyWith(
          _$Accepted value, $Res Function(_$Accepted) then) =
      __$$AcceptedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptedCopyWithImpl<$Res>
    extends _$GdprStateCopyWithImpl<$Res, _$Accepted>
    implements _$$AcceptedCopyWith<$Res> {
  __$$AcceptedCopyWithImpl(_$Accepted _value, $Res Function(_$Accepted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Accepted implements Accepted {
  const _$Accepted();

  @override
  String toString() {
    return 'GdprState.accepted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Accepted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() notAccepted,
    required TResult Function() loading,
    required TResult Function(Exception e) apiError,
  }) {
    return accepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? notAccepted,
    TResult? Function()? loading,
    TResult? Function(Exception e)? apiError,
  }) {
    return accepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? notAccepted,
    TResult Function()? loading,
    TResult Function(Exception e)? apiError,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Accepted value) accepted,
    required TResult Function(NotAccepted value) notAccepted,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Accepted value)? accepted,
    TResult? Function(NotAccepted value)? notAccepted,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
  }) {
    return accepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Accepted value)? accepted,
    TResult Function(NotAccepted value)? notAccepted,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class Accepted implements GdprState {
  const factory Accepted() = _$Accepted;
}

/// @nodoc
abstract class _$$NotAcceptedCopyWith<$Res> {
  factory _$$NotAcceptedCopyWith(
          _$NotAccepted value, $Res Function(_$NotAccepted) then) =
      __$$NotAcceptedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAcceptedCopyWithImpl<$Res>
    extends _$GdprStateCopyWithImpl<$Res, _$NotAccepted>
    implements _$$NotAcceptedCopyWith<$Res> {
  __$$NotAcceptedCopyWithImpl(
      _$NotAccepted _value, $Res Function(_$NotAccepted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAccepted implements NotAccepted {
  const _$NotAccepted();

  @override
  String toString() {
    return 'GdprState.notAccepted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAccepted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() notAccepted,
    required TResult Function() loading,
    required TResult Function(Exception e) apiError,
  }) {
    return notAccepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? notAccepted,
    TResult? Function()? loading,
    TResult? Function(Exception e)? apiError,
  }) {
    return notAccepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? notAccepted,
    TResult Function()? loading,
    TResult Function(Exception e)? apiError,
    required TResult orElse(),
  }) {
    if (notAccepted != null) {
      return notAccepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Accepted value) accepted,
    required TResult Function(NotAccepted value) notAccepted,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
  }) {
    return notAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Accepted value)? accepted,
    TResult? Function(NotAccepted value)? notAccepted,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
  }) {
    return notAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Accepted value)? accepted,
    TResult Function(NotAccepted value)? notAccepted,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (notAccepted != null) {
      return notAccepted(this);
    }
    return orElse();
  }
}

abstract class NotAccepted implements GdprState {
  const factory NotAccepted() = _$NotAccepted;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$GdprStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'GdprState.loading()';
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
    required TResult Function() accepted,
    required TResult Function() notAccepted,
    required TResult Function() loading,
    required TResult Function(Exception e) apiError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? notAccepted,
    TResult? Function()? loading,
    TResult? Function(Exception e)? apiError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? notAccepted,
    TResult Function()? loading,
    TResult Function(Exception e)? apiError,
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
    required TResult Function(Accepted value) accepted,
    required TResult Function(NotAccepted value) notAccepted,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Accepted value)? accepted,
    TResult? Function(NotAccepted value)? notAccepted,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Accepted value)? accepted,
    TResult Function(NotAccepted value)? notAccepted,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GdprState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorCopyWith(
          _$ApiError value, $Res Function(_$ApiError) then) =
      __$$ApiErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$ApiErrorCopyWithImpl<$Res>
    extends _$GdprStateCopyWithImpl<$Res, _$ApiError>
    implements _$$ApiErrorCopyWith<$Res> {
  __$$ApiErrorCopyWithImpl(_$ApiError _value, $Res Function(_$ApiError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ApiError(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ApiError implements ApiError {
  const _$ApiError(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'GdprState.apiError(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiError &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      __$$ApiErrorCopyWithImpl<_$ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() notAccepted,
    required TResult Function() loading,
    required TResult Function(Exception e) apiError,
  }) {
    return apiError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? notAccepted,
    TResult? Function()? loading,
    TResult? Function(Exception e)? apiError,
  }) {
    return apiError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? notAccepted,
    TResult Function()? loading,
    TResult Function(Exception e)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Accepted value) accepted,
    required TResult Function(NotAccepted value) notAccepted,
    required TResult Function(Loading value) loading,
    required TResult Function(ApiError value) apiError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Accepted value)? accepted,
    TResult? Function(NotAccepted value)? notAccepted,
    TResult? Function(Loading value)? loading,
    TResult? Function(ApiError value)? apiError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Accepted value)? accepted,
    TResult Function(NotAccepted value)? notAccepted,
    TResult Function(Loading value)? loading,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements GdprState {
  const factory ApiError(final Exception e) = _$ApiError;

  Exception get e;
  @JsonKey(ignore: true)
  _$$ApiErrorCopyWith<_$ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
