// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userAsked,
    required TResult Function(bool askAgain) updateApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userAsked,
    TResult? Function(bool askAgain)? updateApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userAsked,
    TResult Function(bool askAgain)? updateApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAsked value) userAsked,
    required TResult Function(UpdateApi value) updateApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAsked value)? userAsked,
    TResult? Function(UpdateApi value)? updateApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAsked value)? userAsked,
    TResult Function(UpdateApi value)? updateApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserAskedCopyWith<$Res> {
  factory _$$UserAskedCopyWith(
          _$UserAsked value, $Res Function(_$UserAsked) then) =
      __$$UserAskedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAskedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$UserAsked>
    implements _$$UserAskedCopyWith<$Res> {
  __$$UserAskedCopyWithImpl(
      _$UserAsked _value, $Res Function(_$UserAsked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserAsked implements UserAsked {
  const _$UserAsked();

  @override
  String toString() {
    return 'LocationEvent.userAsked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAsked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userAsked,
    required TResult Function(bool askAgain) updateApi,
  }) {
    return userAsked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userAsked,
    TResult? Function(bool askAgain)? updateApi,
  }) {
    return userAsked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userAsked,
    TResult Function(bool askAgain)? updateApi,
    required TResult orElse(),
  }) {
    if (userAsked != null) {
      return userAsked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAsked value) userAsked,
    required TResult Function(UpdateApi value) updateApi,
  }) {
    return userAsked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAsked value)? userAsked,
    TResult? Function(UpdateApi value)? updateApi,
  }) {
    return userAsked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAsked value)? userAsked,
    TResult Function(UpdateApi value)? updateApi,
    required TResult orElse(),
  }) {
    if (userAsked != null) {
      return userAsked(this);
    }
    return orElse();
  }
}

abstract class UserAsked implements LocationEvent {
  const factory UserAsked() = _$UserAsked;
}

/// @nodoc
abstract class _$$UpdateApiCopyWith<$Res> {
  factory _$$UpdateApiCopyWith(
          _$UpdateApi value, $Res Function(_$UpdateApi) then) =
      __$$UpdateApiCopyWithImpl<$Res>;
  @useResult
  $Res call({bool askAgain});
}

/// @nodoc
class __$$UpdateApiCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$UpdateApi>
    implements _$$UpdateApiCopyWith<$Res> {
  __$$UpdateApiCopyWithImpl(
      _$UpdateApi _value, $Res Function(_$UpdateApi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askAgain = null,
  }) {
    return _then(_$UpdateApi(
      askAgain: null == askAgain
          ? _value.askAgain
          : askAgain // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateApi implements UpdateApi {
  const _$UpdateApi({required this.askAgain});

  @override
  final bool askAgain;

  @override
  String toString() {
    return 'LocationEvent.updateApi(askAgain: $askAgain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateApi &&
            (identical(other.askAgain, askAgain) ||
                other.askAgain == askAgain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, askAgain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateApiCopyWith<_$UpdateApi> get copyWith =>
      __$$UpdateApiCopyWithImpl<_$UpdateApi>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userAsked,
    required TResult Function(bool askAgain) updateApi,
  }) {
    return updateApi(askAgain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userAsked,
    TResult? Function(bool askAgain)? updateApi,
  }) {
    return updateApi?.call(askAgain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userAsked,
    TResult Function(bool askAgain)? updateApi,
    required TResult orElse(),
  }) {
    if (updateApi != null) {
      return updateApi(askAgain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAsked value) userAsked,
    required TResult Function(UpdateApi value) updateApi,
  }) {
    return updateApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAsked value)? userAsked,
    TResult? Function(UpdateApi value)? updateApi,
  }) {
    return updateApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAsked value)? userAsked,
    TResult Function(UpdateApi value)? updateApi,
    required TResult orElse(),
  }) {
    if (updateApi != null) {
      return updateApi(this);
    }
    return orElse();
  }
}

abstract class UpdateApi implements LocationEvent {
  const factory UpdateApi({required final bool askAgain}) = _$UpdateApi;

  bool get askAgain;
  @JsonKey(ignore: true)
  _$$UpdateApiCopyWith<_$UpdateApi> get copyWith =>
      throw _privateConstructorUsedError;
}
