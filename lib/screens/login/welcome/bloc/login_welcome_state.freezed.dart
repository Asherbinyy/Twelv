// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_welcome_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginWelcomeStateTearOff {
  const _$LoginWelcomeStateTearOff();

  Initial initial(List<String> availablePrefixes) {
    return Initial(
      availablePrefixes,
    );
  }

  Loading loading() {
    return const Loading();
  }
}

/// @nodoc
const $LoginWelcomeState = _$LoginWelcomeStateTearOff();

/// @nodoc
mixin _$LoginWelcomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> availablePrefixes) initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> availablePrefixes)? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginWelcomeStateCopyWith<$Res> {
  factory $LoginWelcomeStateCopyWith(
          LoginWelcomeState value, $Res Function(LoginWelcomeState) then) =
      _$LoginWelcomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWelcomeStateCopyWithImpl<$Res>
    implements $LoginWelcomeStateCopyWith<$Res> {
  _$LoginWelcomeStateCopyWithImpl(this._value, this._then);

  final LoginWelcomeState _value;
  // ignore: unused_field
  final $Res Function(LoginWelcomeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({List<String> availablePrefixes});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$LoginWelcomeStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? availablePrefixes = freezed,
  }) {
    return _then(Initial(
      availablePrefixes == freezed
          ? _value.availablePrefixes
          : availablePrefixes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.availablePrefixes);

  @override
  final List<String> availablePrefixes;

  @override
  String toString() {
    return 'LoginWelcomeState.initial(availablePrefixes: $availablePrefixes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.availablePrefixes, availablePrefixes) ||
                const DeepCollectionEquality()
                    .equals(other.availablePrefixes, availablePrefixes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(availablePrefixes);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> availablePrefixes) initial,
    required TResult Function() loading,
  }) {
    return initial(availablePrefixes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> availablePrefixes)? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(availablePrefixes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginWelcomeState {
  const factory Initial(List<String> availablePrefixes) = _$Initial;

  List<String> get availablePrefixes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoginWelcomeStateCopyWithImpl<$Res>
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
    return 'LoginWelcomeState.loading()';
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
    required TResult Function(List<String> availablePrefixes) initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> availablePrefixes)? initial,
    TResult Function()? loading,
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
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginWelcomeState {
  const factory Loading() = _$Loading;
}
