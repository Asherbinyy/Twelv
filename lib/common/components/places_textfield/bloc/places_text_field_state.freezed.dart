// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'places_text_field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacesTextFieldStateTearOff {
  const _$PlacesTextFieldStateTearOff();

  _PlacesTextFieldState call(
      {required bool isWaitingForValidInput,
      required bool isLoading,
      required bool isError,
      List<PlacesPrediction>? predictions,
      PlacesDetails? placesDetails}) {
    return _PlacesTextFieldState(
      isWaitingForValidInput: isWaitingForValidInput,
      isLoading: isLoading,
      isError: isError,
      predictions: predictions,
      placesDetails: placesDetails,
    );
  }
}

/// @nodoc
const $PlacesTextFieldState = _$PlacesTextFieldStateTearOff();

/// @nodoc
mixin _$PlacesTextFieldState {
  bool get isWaitingForValidInput => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<PlacesPrediction>? get predictions => throw _privateConstructorUsedError;
  PlacesDetails? get placesDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacesTextFieldStateCopyWith<PlacesTextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesTextFieldStateCopyWith<$Res> {
  factory $PlacesTextFieldStateCopyWith(PlacesTextFieldState value,
          $Res Function(PlacesTextFieldState) then) =
      _$PlacesTextFieldStateCopyWithImpl<$Res>;
  $Res call(
      {bool isWaitingForValidInput,
      bool isLoading,
      bool isError,
      List<PlacesPrediction>? predictions,
      PlacesDetails? placesDetails});
}

/// @nodoc
class _$PlacesTextFieldStateCopyWithImpl<$Res>
    implements $PlacesTextFieldStateCopyWith<$Res> {
  _$PlacesTextFieldStateCopyWithImpl(this._value, this._then);

  final PlacesTextFieldState _value;
  // ignore: unused_field
  final $Res Function(PlacesTextFieldState) _then;

  @override
  $Res call({
    Object? isWaitingForValidInput = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? predictions = freezed,
    Object? placesDetails = freezed,
  }) {
    return _then(_value.copyWith(
      isWaitingForValidInput: isWaitingForValidInput == freezed
          ? _value.isWaitingForValidInput
          : isWaitingForValidInput // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlacesPrediction>?,
      placesDetails: placesDetails == freezed
          ? _value.placesDetails
          : placesDetails // ignore: cast_nullable_to_non_nullable
              as PlacesDetails?,
    ));
  }
}

/// @nodoc
abstract class _$PlacesTextFieldStateCopyWith<$Res>
    implements $PlacesTextFieldStateCopyWith<$Res> {
  factory _$PlacesTextFieldStateCopyWith(_PlacesTextFieldState value,
          $Res Function(_PlacesTextFieldState) then) =
      __$PlacesTextFieldStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isWaitingForValidInput,
      bool isLoading,
      bool isError,
      List<PlacesPrediction>? predictions,
      PlacesDetails? placesDetails});
}

/// @nodoc
class __$PlacesTextFieldStateCopyWithImpl<$Res>
    extends _$PlacesTextFieldStateCopyWithImpl<$Res>
    implements _$PlacesTextFieldStateCopyWith<$Res> {
  __$PlacesTextFieldStateCopyWithImpl(
      _PlacesTextFieldState _value, $Res Function(_PlacesTextFieldState) _then)
      : super(_value, (v) => _then(v as _PlacesTextFieldState));

  @override
  _PlacesTextFieldState get _value => super._value as _PlacesTextFieldState;

  @override
  $Res call({
    Object? isWaitingForValidInput = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? predictions = freezed,
    Object? placesDetails = freezed,
  }) {
    return _then(_PlacesTextFieldState(
      isWaitingForValidInput: isWaitingForValidInput == freezed
          ? _value.isWaitingForValidInput
          : isWaitingForValidInput // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlacesPrediction>?,
      placesDetails: placesDetails == freezed
          ? _value.placesDetails
          : placesDetails // ignore: cast_nullable_to_non_nullable
              as PlacesDetails?,
    ));
  }
}

/// @nodoc
class _$_PlacesTextFieldState implements _PlacesTextFieldState {
  _$_PlacesTextFieldState(
      {required this.isWaitingForValidInput,
      required this.isLoading,
      required this.isError,
      this.predictions,
      this.placesDetails});

  @override
  final bool isWaitingForValidInput;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final List<PlacesPrediction>? predictions;
  @override
  final PlacesDetails? placesDetails;

  @override
  String toString() {
    return 'PlacesTextFieldState(isWaitingForValidInput: $isWaitingForValidInput, isLoading: $isLoading, isError: $isError, predictions: $predictions, placesDetails: $placesDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlacesTextFieldState &&
            (identical(other.isWaitingForValidInput, isWaitingForValidInput) ||
                const DeepCollectionEquality().equals(
                    other.isWaitingForValidInput, isWaitingForValidInput)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.predictions, predictions) ||
                const DeepCollectionEquality()
                    .equals(other.predictions, predictions)) &&
            (identical(other.placesDetails, placesDetails) ||
                const DeepCollectionEquality()
                    .equals(other.placesDetails, placesDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isWaitingForValidInput) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(predictions) ^
      const DeepCollectionEquality().hash(placesDetails);

  @JsonKey(ignore: true)
  @override
  _$PlacesTextFieldStateCopyWith<_PlacesTextFieldState> get copyWith =>
      __$PlacesTextFieldStateCopyWithImpl<_PlacesTextFieldState>(
          this, _$identity);
}

abstract class _PlacesTextFieldState implements PlacesTextFieldState {
  factory _PlacesTextFieldState(
      {required bool isWaitingForValidInput,
      required bool isLoading,
      required bool isError,
      List<PlacesPrediction>? predictions,
      PlacesDetails? placesDetails}) = _$_PlacesTextFieldState;

  @override
  bool get isWaitingForValidInput => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  List<PlacesPrediction>? get predictions => throw _privateConstructorUsedError;
  @override
  PlacesDetails? get placesDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlacesTextFieldStateCopyWith<_PlacesTextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}
