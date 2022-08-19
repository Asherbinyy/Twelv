// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'places_text_field_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacesTextFieldEventTearOff {
  const _$PlacesTextFieldEventTearOff();

  InitialLocation initialLocation({required PlacesDetails? location}) {
    return InitialLocation(
      location: location,
    );
  }

  SearchTextEntered searchTextEntered({required String? searchText}) {
    return SearchTextEntered(
      searchText: searchText,
    );
  }

  PredictionSelected predictionSelected(
      {required String id, required String name}) {
    return PredictionSelected(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $PlacesTextFieldEvent = _$PlacesTextFieldEventTearOff();

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
      _$PlacesTextFieldEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesTextFieldEventCopyWithImpl<$Res>
    implements $PlacesTextFieldEventCopyWith<$Res> {
  _$PlacesTextFieldEventCopyWithImpl(this._value, this._then);

  final PlacesTextFieldEvent _value;
  // ignore: unused_field
  final $Res Function(PlacesTextFieldEvent) _then;
}

/// @nodoc
abstract class $InitialLocationCopyWith<$Res> {
  factory $InitialLocationCopyWith(
          InitialLocation value, $Res Function(InitialLocation) then) =
      _$InitialLocationCopyWithImpl<$Res>;
  $Res call({PlacesDetails? location});
}

/// @nodoc
class _$InitialLocationCopyWithImpl<$Res>
    extends _$PlacesTextFieldEventCopyWithImpl<$Res>
    implements $InitialLocationCopyWith<$Res> {
  _$InitialLocationCopyWithImpl(
      InitialLocation _value, $Res Function(InitialLocation) _then)
      : super(_value, (v) => _then(v as InitialLocation));

  @override
  InitialLocation get _value => super._value as InitialLocation;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(InitialLocation(
      location: location == freezed
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
        (other is InitialLocation &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $InitialLocationCopyWith<InitialLocation> get copyWith =>
      _$InitialLocationCopyWithImpl<InitialLocation>(this, _$identity);

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
  const factory InitialLocation({required PlacesDetails? location}) =
      _$InitialLocation;

  PlacesDetails? get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialLocationCopyWith<InitialLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTextEnteredCopyWith<$Res> {
  factory $SearchTextEnteredCopyWith(
          SearchTextEntered value, $Res Function(SearchTextEntered) then) =
      _$SearchTextEnteredCopyWithImpl<$Res>;
  $Res call({String? searchText});
}

/// @nodoc
class _$SearchTextEnteredCopyWithImpl<$Res>
    extends _$PlacesTextFieldEventCopyWithImpl<$Res>
    implements $SearchTextEnteredCopyWith<$Res> {
  _$SearchTextEnteredCopyWithImpl(
      SearchTextEntered _value, $Res Function(SearchTextEntered) _then)
      : super(_value, (v) => _then(v as SearchTextEntered));

  @override
  SearchTextEntered get _value => super._value as SearchTextEntered;

  @override
  $Res call({
    Object? searchText = freezed,
  }) {
    return _then(SearchTextEntered(
      searchText: searchText == freezed
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
        (other is SearchTextEntered &&
            (identical(other.searchText, searchText) ||
                const DeepCollectionEquality()
                    .equals(other.searchText, searchText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchText);

  @JsonKey(ignore: true)
  @override
  $SearchTextEnteredCopyWith<SearchTextEntered> get copyWith =>
      _$SearchTextEnteredCopyWithImpl<SearchTextEntered>(this, _$identity);

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
  const factory SearchTextEntered({required String? searchText}) =
      _$SearchTextEntered;

  String? get searchText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchTextEnteredCopyWith<SearchTextEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionSelectedCopyWith<$Res> {
  factory $PredictionSelectedCopyWith(
          PredictionSelected value, $Res Function(PredictionSelected) then) =
      _$PredictionSelectedCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$PredictionSelectedCopyWithImpl<$Res>
    extends _$PlacesTextFieldEventCopyWithImpl<$Res>
    implements $PredictionSelectedCopyWith<$Res> {
  _$PredictionSelectedCopyWithImpl(
      PredictionSelected _value, $Res Function(PredictionSelected) _then)
      : super(_value, (v) => _then(v as PredictionSelected));

  @override
  PredictionSelected get _value => super._value as PredictionSelected;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(PredictionSelected(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
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
        (other is PredictionSelected &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $PredictionSelectedCopyWith<PredictionSelected> get copyWith =>
      _$PredictionSelectedCopyWithImpl<PredictionSelected>(this, _$identity);

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
  const factory PredictionSelected({required String id, required String name}) =
      _$PredictionSelected;

  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionSelectedCopyWith<PredictionSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
