// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_text_field_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlacesTextFieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlacesDetails? location) initialLocation,
    required TResult Function(String? searchText) searchTextEntered,
    required TResult Function(String id, String name) predictionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlacesDetails? location)? initialLocation,
    TResult? Function(String? searchText)? searchTextEntered,
    TResult? Function(String id, String name)? predictionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlacesDetails? location)? initialLocation,
    TResult Function(String? searchText)? searchTextEntered,
    TResult Function(String id, String name)? predictionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocation value) initialLocation,
    required TResult Function(SearchTextEntered value) searchTextEntered,
    required TResult Function(PredictionSelected value) predictionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLocation value)? initialLocation,
    TResult? Function(SearchTextEntered value)? searchTextEntered,
    TResult? Function(PredictionSelected value)? predictionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocation value)? initialLocation,
    TResult Function(SearchTextEntered value)? searchTextEntered,
    TResult Function(PredictionSelected value)? predictionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesTextFieldEventCopyWith<$Res> {
  factory $PlacesTextFieldEventCopyWith(PlacesTextFieldEvent value,
          $Res Function(PlacesTextFieldEvent) then) =
      _$PlacesTextFieldEventCopyWithImpl<$Res, PlacesTextFieldEvent>;
}

/// @nodoc
class _$PlacesTextFieldEventCopyWithImpl<$Res,
        $Val extends PlacesTextFieldEvent>
    implements $PlacesTextFieldEventCopyWith<$Res> {
  _$PlacesTextFieldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLocationCopyWith<$Res> {
  factory _$$InitialLocationCopyWith(
          _$InitialLocation value, $Res Function(_$InitialLocation) then) =
      __$$InitialLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({PlacesDetails? location});
}

/// @nodoc
class __$$InitialLocationCopyWithImpl<$Res>
    extends _$PlacesTextFieldEventCopyWithImpl<$Res, _$InitialLocation>
    implements _$$InitialLocationCopyWith<$Res> {
  __$$InitialLocationCopyWithImpl(
      _$InitialLocation _value, $Res Function(_$InitialLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$InitialLocation(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlacesDetails?,
    ));
  }
}

/// @nodoc

class _$InitialLocation implements InitialLocation {
  const _$InitialLocation({required this.location});

  @override
  final PlacesDetails? location;

  @override
  String toString() {
    return 'PlacesTextFieldEvent.initialLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialLocation &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialLocationCopyWith<_$InitialLocation> get copyWith =>
      __$$InitialLocationCopyWithImpl<_$InitialLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlacesDetails? location) initialLocation,
    required TResult Function(String? searchText) searchTextEntered,
    required TResult Function(String id, String name) predictionSelected,
  }) {
    return initialLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlacesDetails? location)? initialLocation,
    TResult? Function(String? searchText)? searchTextEntered,
    TResult? Function(String id, String name)? predictionSelected,
  }) {
    return initialLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlacesDetails? location)? initialLocation,
    TResult Function(String? searchText)? searchTextEntered,
    TResult Function(String id, String name)? predictionSelected,
    required TResult orElse(),
  }) {
    if (initialLocation != null) {
      return initialLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocation value) initialLocation,
    required TResult Function(SearchTextEntered value) searchTextEntered,
    required TResult Function(PredictionSelected value) predictionSelected,
  }) {
    return initialLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLocation value)? initialLocation,
    TResult? Function(SearchTextEntered value)? searchTextEntered,
    TResult? Function(PredictionSelected value)? predictionSelected,
  }) {
    return initialLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocation value)? initialLocation,
    TResult Function(SearchTextEntered value)? searchTextEntered,
    TResult Function(PredictionSelected value)? predictionSelected,
    required TResult orElse(),
  }) {
    if (initialLocation != null) {
      return initialLocation(this);
    }
    return orElse();
  }
}

abstract class InitialLocation implements PlacesTextFieldEvent {
  const factory InitialLocation({required final PlacesDetails? location}) =
      _$InitialLocation;

  PlacesDetails? get location;
  @JsonKey(ignore: true)
  _$$InitialLocationCopyWith<_$InitialLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTextEnteredCopyWith<$Res> {
  factory _$$SearchTextEnteredCopyWith(
          _$SearchTextEntered value, $Res Function(_$SearchTextEntered) then) =
      __$$SearchTextEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchText});
}

/// @nodoc
class __$$SearchTextEnteredCopyWithImpl<$Res>
    extends _$PlacesTextFieldEventCopyWithImpl<$Res, _$SearchTextEntered>
    implements _$$SearchTextEnteredCopyWith<$Res> {
  __$$SearchTextEnteredCopyWithImpl(
      _$SearchTextEntered _value, $Res Function(_$SearchTextEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = freezed,
  }) {
    return _then(_$SearchTextEntered(
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchTextEntered implements SearchTextEntered {
  const _$SearchTextEntered({required this.searchText});

  @override
  final String? searchText;

  @override
  String toString() {
    return 'PlacesTextFieldEvent.searchTextEntered(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTextEntered &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTextEnteredCopyWith<_$SearchTextEntered> get copyWith =>
      __$$SearchTextEnteredCopyWithImpl<_$SearchTextEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlacesDetails? location) initialLocation,
    required TResult Function(String? searchText) searchTextEntered,
    required TResult Function(String id, String name) predictionSelected,
  }) {
    return searchTextEntered(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlacesDetails? location)? initialLocation,
    TResult? Function(String? searchText)? searchTextEntered,
    TResult? Function(String id, String name)? predictionSelected,
  }) {
    return searchTextEntered?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlacesDetails? location)? initialLocation,
    TResult Function(String? searchText)? searchTextEntered,
    TResult Function(String id, String name)? predictionSelected,
    required TResult orElse(),
  }) {
    if (searchTextEntered != null) {
      return searchTextEntered(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocation value) initialLocation,
    required TResult Function(SearchTextEntered value) searchTextEntered,
    required TResult Function(PredictionSelected value) predictionSelected,
  }) {
    return searchTextEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLocation value)? initialLocation,
    TResult? Function(SearchTextEntered value)? searchTextEntered,
    TResult? Function(PredictionSelected value)? predictionSelected,
  }) {
    return searchTextEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocation value)? initialLocation,
    TResult Function(SearchTextEntered value)? searchTextEntered,
    TResult Function(PredictionSelected value)? predictionSelected,
    required TResult orElse(),
  }) {
    if (searchTextEntered != null) {
      return searchTextEntered(this);
    }
    return orElse();
  }
}

abstract class SearchTextEntered implements PlacesTextFieldEvent {
  const factory SearchTextEntered({required final String? searchText}) =
      _$SearchTextEntered;

  String? get searchText;
  @JsonKey(ignore: true)
  _$$SearchTextEnteredCopyWith<_$SearchTextEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PredictionSelectedCopyWith<$Res> {
  factory _$$PredictionSelectedCopyWith(_$PredictionSelected value,
          $Res Function(_$PredictionSelected) then) =
      __$$PredictionSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$PredictionSelectedCopyWithImpl<$Res>
    extends _$PlacesTextFieldEventCopyWithImpl<$Res, _$PredictionSelected>
    implements _$$PredictionSelectedCopyWith<$Res> {
  __$$PredictionSelectedCopyWithImpl(
      _$PredictionSelected _value, $Res Function(_$PredictionSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PredictionSelected(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PredictionSelected implements PredictionSelected {
  const _$PredictionSelected({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PlacesTextFieldEvent.predictionSelected(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionSelected &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionSelectedCopyWith<_$PredictionSelected> get copyWith =>
      __$$PredictionSelectedCopyWithImpl<_$PredictionSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlacesDetails? location) initialLocation,
    required TResult Function(String? searchText) searchTextEntered,
    required TResult Function(String id, String name) predictionSelected,
  }) {
    return predictionSelected(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlacesDetails? location)? initialLocation,
    TResult? Function(String? searchText)? searchTextEntered,
    TResult? Function(String id, String name)? predictionSelected,
  }) {
    return predictionSelected?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlacesDetails? location)? initialLocation,
    TResult Function(String? searchText)? searchTextEntered,
    TResult Function(String id, String name)? predictionSelected,
    required TResult orElse(),
  }) {
    if (predictionSelected != null) {
      return predictionSelected(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocation value) initialLocation,
    required TResult Function(SearchTextEntered value) searchTextEntered,
    required TResult Function(PredictionSelected value) predictionSelected,
  }) {
    return predictionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLocation value)? initialLocation,
    TResult? Function(SearchTextEntered value)? searchTextEntered,
    TResult? Function(PredictionSelected value)? predictionSelected,
  }) {
    return predictionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocation value)? initialLocation,
    TResult Function(SearchTextEntered value)? searchTextEntered,
    TResult Function(PredictionSelected value)? predictionSelected,
    required TResult orElse(),
  }) {
    if (predictionSelected != null) {
      return predictionSelected(this);
    }
    return orElse();
  }
}

abstract class PredictionSelected implements PlacesTextFieldEvent {
  const factory PredictionSelected(
      {required final String id,
      required final String name}) = _$PredictionSelected;

  String get id;
  String get name;
  @JsonKey(ignore: true)
  _$$PredictionSelectedCopyWith<_$PredictionSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
