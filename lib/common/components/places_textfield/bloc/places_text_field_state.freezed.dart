// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_text_field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$PlacesTextFieldStateCopyWithImpl<$Res, PlacesTextFieldState>;
  @useResult
  $Res call(
      {bool isWaitingForValidInput,
      bool isLoading,
      bool isError,
      List<PlacesPrediction>? predictions,
      PlacesDetails? placesDetails});
}

/// @nodoc
class _$PlacesTextFieldStateCopyWithImpl<$Res,
        $Val extends PlacesTextFieldState>
    implements $PlacesTextFieldStateCopyWith<$Res> {
  _$PlacesTextFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWaitingForValidInput = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? predictions = freezed,
    Object? placesDetails = freezed,
  }) {
    return _then(_value.copyWith(
      isWaitingForValidInput: null == isWaitingForValidInput
          ? _value.isWaitingForValidInput
          : isWaitingForValidInput // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      predictions: freezed == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlacesPrediction>?,
      placesDetails: freezed == placesDetails
          ? _value.placesDetails
          : placesDetails // ignore: cast_nullable_to_non_nullable
              as PlacesDetails?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlacesTextFieldStateCopyWith<$Res>
    implements $PlacesTextFieldStateCopyWith<$Res> {
  factory _$$_PlacesTextFieldStateCopyWith(_$_PlacesTextFieldState value,
          $Res Function(_$_PlacesTextFieldState) then) =
      __$$_PlacesTextFieldStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isWaitingForValidInput,
      bool isLoading,
      bool isError,
      List<PlacesPrediction>? predictions,
      PlacesDetails? placesDetails});
}

/// @nodoc
class __$$_PlacesTextFieldStateCopyWithImpl<$Res>
    extends _$PlacesTextFieldStateCopyWithImpl<$Res, _$_PlacesTextFieldState>
    implements _$$_PlacesTextFieldStateCopyWith<$Res> {
  __$$_PlacesTextFieldStateCopyWithImpl(_$_PlacesTextFieldState _value,
      $Res Function(_$_PlacesTextFieldState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWaitingForValidInput = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? predictions = freezed,
    Object? placesDetails = freezed,
  }) {
    return _then(_$_PlacesTextFieldState(
      isWaitingForValidInput: null == isWaitingForValidInput
          ? _value.isWaitingForValidInput
          : isWaitingForValidInput // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      predictions: freezed == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlacesPrediction>?,
      placesDetails: freezed == placesDetails
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
      final List<PlacesPrediction>? predictions,
      this.placesDetails})
      : _predictions = predictions;

  @override
  final bool isWaitingForValidInput;
  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<PlacesPrediction>? _predictions;
  @override
  List<PlacesPrediction>? get predictions {
    final value = _predictions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PlacesDetails? placesDetails;

  @override
  String toString() {
    return 'PlacesTextFieldState(isWaitingForValidInput: $isWaitingForValidInput, isLoading: $isLoading, isError: $isError, predictions: $predictions, placesDetails: $placesDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesTextFieldState &&
            (identical(other.isWaitingForValidInput, isWaitingForValidInput) ||
                other.isWaitingForValidInput == isWaitingForValidInput) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions) &&
            (identical(other.placesDetails, placesDetails) ||
                other.placesDetails == placesDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isWaitingForValidInput,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_predictions),
      placesDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacesTextFieldStateCopyWith<_$_PlacesTextFieldState> get copyWith =>
      __$$_PlacesTextFieldStateCopyWithImpl<_$_PlacesTextFieldState>(
          this, _$identity);
}

abstract class _PlacesTextFieldState implements PlacesTextFieldState {
  factory _PlacesTextFieldState(
      {required final bool isWaitingForValidInput,
      required final bool isLoading,
      required final bool isError,
      final List<PlacesPrediction>? predictions,
      final PlacesDetails? placesDetails}) = _$_PlacesTextFieldState;

  @override
  bool get isWaitingForValidInput;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<PlacesPrediction>? get predictions;
  @override
  PlacesDetails? get placesDetails;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesTextFieldStateCopyWith<_$_PlacesTextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}
