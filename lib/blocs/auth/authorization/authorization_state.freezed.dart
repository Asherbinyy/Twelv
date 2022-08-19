// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authorization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationStateTearOff {
  const _$AuthorizationStateTearOff();

  Unauthorized unauthorized() {
    return const Unauthorized();
  }

  Authorized authorized({required bool isOnboarded}) {
    return Authorized(
      isOnboarded: isOnboarded,
    );
  }
}

/// @nodoc
const $AuthorizationState = _$AuthorizationStateTearOff();

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(bool isOnboarded) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(bool isOnboarded)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Authorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Authorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;
}

/// @nodoc
abstract class $UnauthorizedCopyWith<$Res> {
  factory $UnauthorizedCopyWith(
          Unauthorized value, $Res Function(Unauthorized) then) =
      _$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements $UnauthorizedCopyWith<$Res> {
  _$UnauthorizedCopyWithImpl(
      Unauthorized _value, $Res Function(Unauthorized) _then)
      : super(_value, (v) => _then(v as Unauthorized));

  @override
  Unauthorized get _value => super._value as Unauthorized;
}

/// @nodoc
class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'AuthorizationState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(bool isOnboarded) authorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(bool isOnboarded)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Authorized value) authorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Authorized value)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements AuthorizationState {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class $AuthorizedCopyWith<$Res> {
  factory $AuthorizedCopyWith(
          Authorized value, $Res Function(Authorized) then) =
      _$AuthorizedCopyWithImpl<$Res>;
  $Res call({bool isOnboarded});
}

/// @nodoc
class _$AuthorizedCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizedCopyWith<$Res> {
  _$AuthorizedCopyWithImpl(Authorized _value, $Res Function(Authorized) _then)
      : super(_value, (v) => _then(v as Authorized));

  @override
  Authorized get _value => super._value as Authorized;

  @override
  $Res call({
    Object? isOnboarded = freezed,
  }) {
    return _then(Authorized(
      isOnboarded: isOnboarded == freezed
          ? _value.isOnboarded
          : isOnboarded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$Authorized implements Authorized {
  const _$Authorized({required this.isOnboarded});

  @override
  final bool isOnboarded;

  @override
  String toString() {
    return 'AuthorizationState.authorized(isOnboarded: $isOnboarded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authorized &&
            (identical(other.isOnboarded, isOnboarded) ||
                const DeepCollectionEquality()
                    .equals(other.isOnboarded, isOnboarded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOnboarded);

  @JsonKey(ignore: true)
  @override
  $AuthorizedCopyWith<Authorized> get copyWith =>
      _$AuthorizedCopyWithImpl<Authorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(bool isOnboarded) authorized,
  }) {
    return authorized(isOnboarded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(bool isOnboarded)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(isOnboarded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Authorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Authorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class Authorized implements AuthorizationState {
  const factory Authorized({required bool isOnboarded}) = _$Authorized;

  bool get isOnboarded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizedCopyWith<Authorized> get copyWith =>
      throw _privateConstructorUsedError;
}
