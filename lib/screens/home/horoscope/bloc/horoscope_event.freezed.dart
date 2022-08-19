// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'horoscope_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HoroscopeEventTearOff {
  const _$HoroscopeEventTearOff();

  GetHoroscope getHoroscope() {
    return const GetHoroscope();
  }
}

/// @nodoc
const $HoroscopeEvent = _$HoroscopeEventTearOff();

/// @nodoc
mixin _$HoroscopeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHoroscope,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHoroscope,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHoroscope value) getHoroscope,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHoroscope value)? getHoroscope,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoroscopeEventCopyWith<$Res> {
  factory $HoroscopeEventCopyWith(
          HoroscopeEvent value, $Res Function(HoroscopeEvent) then) =
      _$HoroscopeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HoroscopeEventCopyWithImpl<$Res>
    implements $HoroscopeEventCopyWith<$Res> {
  _$HoroscopeEventCopyWithImpl(this._value, this._then);

  final HoroscopeEvent _value;
  // ignore: unused_field
  final $Res Function(HoroscopeEvent) _then;
}

/// @nodoc
abstract class $GetHoroscopeCopyWith<$Res> {
  factory $GetHoroscopeCopyWith(
          GetHoroscope value, $Res Function(GetHoroscope) then) =
      _$GetHoroscopeCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetHoroscopeCopyWithImpl<$Res>
    extends _$HoroscopeEventCopyWithImpl<$Res>
    implements $GetHoroscopeCopyWith<$Res> {
  _$GetHoroscopeCopyWithImpl(
      GetHoroscope _value, $Res Function(GetHoroscope) _then)
      : super(_value, (v) => _then(v as GetHoroscope));

  @override
  GetHoroscope get _value => super._value as GetHoroscope;
}

/// @nodoc
class _$GetHoroscope implements GetHoroscope {
  const _$GetHoroscope();

  @override
  String toString() {
    return 'HoroscopeEvent.getHoroscope()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetHoroscope);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHoroscope,
  }) {
    return getHoroscope();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHoroscope,
    required TResult orElse(),
  }) {
    if (getHoroscope != null) {
      return getHoroscope();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHoroscope value) getHoroscope,
  }) {
    return getHoroscope(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHoroscope value)? getHoroscope,
    required TResult orElse(),
  }) {
    if (getHoroscope != null) {
      return getHoroscope(this);
    }
    return orElse();
  }
}

abstract class GetHoroscope implements HoroscopeEvent {
  const factory GetHoroscope() = _$GetHoroscope;
}
