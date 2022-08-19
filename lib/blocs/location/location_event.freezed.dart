// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  UserAsked userAsked() {
    return const UserAsked();
  }

  UpdateApi updateApi({required bool askAgain}) {
    return UpdateApi(
      askAgain: askAgain,
    );
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userAsked,
    required TResult Function(bool askAgain) updateApi,
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
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class $UserAskedCopyWith<$Res> {
  factory $UserAskedCopyWith(UserAsked value, $Res Function(UserAsked) then) =
      _$UserAskedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAskedCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements $UserAskedCopyWith<$Res> {
  _$UserAskedCopyWithImpl(UserAsked _value, $Res Function(UserAsked) _then)
      : super(_value, (v) => _then(v as UserAsked));

  @override
  UserAsked get _value => super._value as UserAsked;
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
    return identical(this, other) || (other is UserAsked);
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
abstract class $UpdateApiCopyWith<$Res> {
  factory $UpdateApiCopyWith(UpdateApi value, $Res Function(UpdateApi) then) =
      _$UpdateApiCopyWithImpl<$Res>;
  $Res call({bool askAgain});
}

/// @nodoc
class _$UpdateApiCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements $UpdateApiCopyWith<$Res> {
  _$UpdateApiCopyWithImpl(UpdateApi _value, $Res Function(UpdateApi) _then)
      : super(_value, (v) => _then(v as UpdateApi));

  @override
  UpdateApi get _value => super._value as UpdateApi;

  @override
  $Res call({
    Object? askAgain = freezed,
  }) {
    return _then(UpdateApi(
      askAgain: askAgain == freezed
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
        (other is UpdateApi &&
            (identical(other.askAgain, askAgain) ||
                const DeepCollectionEquality()
                    .equals(other.askAgain, askAgain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(askAgain);

  @JsonKey(ignore: true)
  @override
  $UpdateApiCopyWith<UpdateApi> get copyWith =>
      _$UpdateApiCopyWithImpl<UpdateApi>(this, _$identity);

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
  const factory UpdateApi({required bool askAgain}) = _$UpdateApi;

  bool get askAgain => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateApiCopyWith<UpdateApi> get copyWith =>
      throw _privateConstructorUsedError;
}
