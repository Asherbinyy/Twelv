// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'horoscope_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HoroscopeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHoroscope,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHoroscope,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHoroscope value)? getHoroscope,
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
      _$HoroscopeEventCopyWithImpl<$Res, HoroscopeEvent>;
}

/// @nodoc
class _$HoroscopeEventCopyWithImpl<$Res, $Val extends HoroscopeEvent>
    implements $HoroscopeEventCopyWith<$Res> {
  _$HoroscopeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHoroscopeCopyWith<$Res> {
  factory _$$GetHoroscopeCopyWith(
          _$GetHoroscope value, $Res Function(_$GetHoroscope) then) =
      __$$GetHoroscopeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHoroscopeCopyWithImpl<$Res>
    extends _$HoroscopeEventCopyWithImpl<$Res, _$GetHoroscope>
    implements _$$GetHoroscopeCopyWith<$Res> {
  __$$GetHoroscopeCopyWithImpl(
      _$GetHoroscope _value, $Res Function(_$GetHoroscope) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHoroscope);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHoroscope,
  }) {
    return getHoroscope?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHoroscope value)? getHoroscope,
  }) {
    return getHoroscope?.call(this);
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
