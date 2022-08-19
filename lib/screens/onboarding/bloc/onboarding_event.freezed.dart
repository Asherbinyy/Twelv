// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'onboarding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardingEventTearOff {
  const _$OnboardingEventTearOff();

  NameEntered nameEntered({required String? name}) {
    return NameEntered(
      name: name,
    );
  }

  BirthDataEntered birthDataEntered(
      {required DateTime? birthDate,
      required TimeOfDay? birthTime,
      required PlacesDetails? birthLocation}) {
    return BirthDataEntered(
      birthDate: birthDate,
      birthTime: birthTime,
      birthLocation: birthLocation,
    );
  }

  GenderEntered genderEntered(
      {required Gender? gender, required Gender? interestedIn}) {
    return GenderEntered(
      gender: gender,
      interestedIn: interestedIn,
    );
  }

  PhotoAdd photoAdd({required File? file}) {
    return PhotoAdd(
      file: file,
    );
  }

  PhotoDelete photoDelete({required int? index}) {
    return PhotoDelete(
      index: index,
    );
  }

  DescriptionEntered descriptionEntered({required String? description}) {
    return DescriptionEntered(
      description: description,
    );
  }

  LocationEntered locationEntered(
      {required double? lat, required double? lon}) {
    return LocationEntered(
      lat: lat,
      lon: lon,
    );
  }

  Finished finished() {
    return const Finished();
  }
}

/// @nodoc
const $OnboardingEvent = _$OnboardingEventTearOff();

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  final OnboardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingEvent) _then;
}

/// @nodoc
abstract class $NameEnteredCopyWith<$Res> {
  factory $NameEnteredCopyWith(
          NameEntered value, $Res Function(NameEntered) then) =
      _$NameEnteredCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$NameEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements $NameEnteredCopyWith<$Res> {
  _$NameEnteredCopyWithImpl(
      NameEntered _value, $Res Function(NameEntered) _then)
      : super(_value, (v) => _then(v as NameEntered));

  @override
  NameEntered get _value => super._value as NameEntered;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameEntered(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$NameEntered implements NameEntered {
  const _$NameEntered({required this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'OnboardingEvent.nameEntered(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameEntered &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameEnteredCopyWith<NameEntered> get copyWith =>
      _$NameEnteredCopyWithImpl<NameEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return nameEntered(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (nameEntered != null) {
      return nameEntered(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return nameEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (nameEntered != null) {
      return nameEntered(this);
    }
    return orElse();
  }
}

abstract class NameEntered implements OnboardingEvent {
  const factory NameEntered({required String? name}) = _$NameEntered;

  String? get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameEnteredCopyWith<NameEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthDataEnteredCopyWith<$Res> {
  factory $BirthDataEnteredCopyWith(
          BirthDataEntered value, $Res Function(BirthDataEntered) then) =
      _$BirthDataEnteredCopyWithImpl<$Res>;
  $Res call(
      {DateTime? birthDate,
      TimeOfDay? birthTime,
      PlacesDetails? birthLocation});
}

/// @nodoc
class _$BirthDataEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements $BirthDataEnteredCopyWith<$Res> {
  _$BirthDataEnteredCopyWithImpl(
      BirthDataEntered _value, $Res Function(BirthDataEntered) _then)
      : super(_value, (v) => _then(v as BirthDataEntered));

  @override
  BirthDataEntered get _value => super._value as BirthDataEntered;

  @override
  $Res call({
    Object? birthDate = freezed,
    Object? birthTime = freezed,
    Object? birthLocation = freezed,
  }) {
    return _then(BirthDataEntered(
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthTime: birthTime == freezed
          ? _value.birthTime
          : birthTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      birthLocation: birthLocation == freezed
          ? _value.birthLocation
          : birthLocation // ignore: cast_nullable_to_non_nullable
              as PlacesDetails?,
    ));
  }
}

/// @nodoc
class _$BirthDataEntered implements BirthDataEntered {
  const _$BirthDataEntered(
      {required this.birthDate,
      required this.birthTime,
      required this.birthLocation});

  @override
  final DateTime? birthDate;
  @override
  final TimeOfDay? birthTime;
  @override
  final PlacesDetails? birthLocation;

  @override
  String toString() {
    return 'OnboardingEvent.birthDataEntered(birthDate: $birthDate, birthTime: $birthTime, birthLocation: $birthLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BirthDataEntered &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.birthTime, birthTime) ||
                const DeepCollectionEquality()
                    .equals(other.birthTime, birthTime)) &&
            (identical(other.birthLocation, birthLocation) ||
                const DeepCollectionEquality()
                    .equals(other.birthLocation, birthLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(birthTime) ^
      const DeepCollectionEquality().hash(birthLocation);

  @JsonKey(ignore: true)
  @override
  $BirthDataEnteredCopyWith<BirthDataEntered> get copyWith =>
      _$BirthDataEnteredCopyWithImpl<BirthDataEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return birthDataEntered(birthDate, birthTime, birthLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (birthDataEntered != null) {
      return birthDataEntered(birthDate, birthTime, birthLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return birthDataEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (birthDataEntered != null) {
      return birthDataEntered(this);
    }
    return orElse();
  }
}

abstract class BirthDataEntered implements OnboardingEvent {
  const factory BirthDataEntered(
      {required DateTime? birthDate,
      required TimeOfDay? birthTime,
      required PlacesDetails? birthLocation}) = _$BirthDataEntered;

  DateTime? get birthDate => throw _privateConstructorUsedError;
  TimeOfDay? get birthTime => throw _privateConstructorUsedError;
  PlacesDetails? get birthLocation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthDataEnteredCopyWith<BirthDataEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderEnteredCopyWith<$Res> {
  factory $GenderEnteredCopyWith(
          GenderEntered value, $Res Function(GenderEntered) then) =
      _$GenderEnteredCopyWithImpl<$Res>;
  $Res call({Gender? gender, Gender? interestedIn});
}

/// @nodoc
class _$GenderEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements $GenderEnteredCopyWith<$Res> {
  _$GenderEnteredCopyWithImpl(
      GenderEntered _value, $Res Function(GenderEntered) _then)
      : super(_value, (v) => _then(v as GenderEntered));

  @override
  GenderEntered get _value => super._value as GenderEntered;

  @override
  $Res call({
    Object? gender = freezed,
    Object? interestedIn = freezed,
  }) {
    return _then(GenderEntered(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      interestedIn: interestedIn == freezed
          ? _value.interestedIn
          : interestedIn // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc
class _$GenderEntered implements GenderEntered {
  const _$GenderEntered({required this.gender, required this.interestedIn});

  @override
  final Gender? gender;
  @override
  final Gender? interestedIn;

  @override
  String toString() {
    return 'OnboardingEvent.genderEntered(gender: $gender, interestedIn: $interestedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenderEntered &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.interestedIn, interestedIn) ||
                const DeepCollectionEquality()
                    .equals(other.interestedIn, interestedIn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(interestedIn);

  @JsonKey(ignore: true)
  @override
  $GenderEnteredCopyWith<GenderEntered> get copyWith =>
      _$GenderEnteredCopyWithImpl<GenderEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return genderEntered(gender, interestedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (genderEntered != null) {
      return genderEntered(gender, interestedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return genderEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (genderEntered != null) {
      return genderEntered(this);
    }
    return orElse();
  }
}

abstract class GenderEntered implements OnboardingEvent {
  const factory GenderEntered(
      {required Gender? gender,
      required Gender? interestedIn}) = _$GenderEntered;

  Gender? get gender => throw _privateConstructorUsedError;
  Gender? get interestedIn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderEnteredCopyWith<GenderEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoAddCopyWith<$Res> {
  factory $PhotoAddCopyWith(PhotoAdd value, $Res Function(PhotoAdd) then) =
      _$PhotoAddCopyWithImpl<$Res>;
  $Res call({File? file});
}

/// @nodoc
class _$PhotoAddCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements $PhotoAddCopyWith<$Res> {
  _$PhotoAddCopyWithImpl(PhotoAdd _value, $Res Function(PhotoAdd) _then)
      : super(_value, (v) => _then(v as PhotoAdd));

  @override
  PhotoAdd get _value => super._value as PhotoAdd;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(PhotoAdd(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
class _$PhotoAdd implements PhotoAdd {
  const _$PhotoAdd({required this.file});

  @override
  final File? file;

  @override
  String toString() {
    return 'OnboardingEvent.photoAdd(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhotoAdd &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  $PhotoAddCopyWith<PhotoAdd> get copyWith =>
      _$PhotoAddCopyWithImpl<PhotoAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return photoAdd(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (photoAdd != null) {
      return photoAdd(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return photoAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (photoAdd != null) {
      return photoAdd(this);
    }
    return orElse();
  }
}

abstract class PhotoAdd implements OnboardingEvent {
  const factory PhotoAdd({required File? file}) = _$PhotoAdd;

  File? get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoAddCopyWith<PhotoAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDeleteCopyWith<$Res> {
  factory $PhotoDeleteCopyWith(
          PhotoDelete value, $Res Function(PhotoDelete) then) =
      _$PhotoDeleteCopyWithImpl<$Res>;
  $Res call({int? index});
}

/// @nodoc
class _$PhotoDeleteCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements $PhotoDeleteCopyWith<$Res> {
  _$PhotoDeleteCopyWithImpl(
      PhotoDelete _value, $Res Function(PhotoDelete) _then)
      : super(_value, (v) => _then(v as PhotoDelete));

  @override
  PhotoDelete get _value => super._value as PhotoDelete;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(PhotoDelete(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$PhotoDelete implements PhotoDelete {
  const _$PhotoDelete({required this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'OnboardingEvent.photoDelete(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhotoDelete &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $PhotoDeleteCopyWith<PhotoDelete> get copyWith =>
      _$PhotoDeleteCopyWithImpl<PhotoDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return photoDelete(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (photoDelete != null) {
      return photoDelete(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return photoDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (photoDelete != null) {
      return photoDelete(this);
    }
    return orElse();
  }
}

abstract class PhotoDelete implements OnboardingEvent {
  const factory PhotoDelete({required int? index}) = _$PhotoDelete;

  int? get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoDeleteCopyWith<PhotoDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionEnteredCopyWith<$Res> {
  factory $DescriptionEnteredCopyWith(
          DescriptionEntered value, $Res Function(DescriptionEntered) then) =
      _$DescriptionEnteredCopyWithImpl<$Res>;
  $Res call({String? description});
}

/// @nodoc
class _$DescriptionEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements $DescriptionEnteredCopyWith<$Res> {
  _$DescriptionEnteredCopyWithImpl(
      DescriptionEntered _value, $Res Function(DescriptionEntered) _then)
      : super(_value, (v) => _then(v as DescriptionEntered));

  @override
  DescriptionEntered get _value => super._value as DescriptionEntered;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(DescriptionEntered(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$DescriptionEntered implements DescriptionEntered {
  const _$DescriptionEntered({required this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'OnboardingEvent.descriptionEntered(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DescriptionEntered &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $DescriptionEnteredCopyWith<DescriptionEntered> get copyWith =>
      _$DescriptionEnteredCopyWithImpl<DescriptionEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return descriptionEntered(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (descriptionEntered != null) {
      return descriptionEntered(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return descriptionEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (descriptionEntered != null) {
      return descriptionEntered(this);
    }
    return orElse();
  }
}

abstract class DescriptionEntered implements OnboardingEvent {
  const factory DescriptionEntered({required String? description}) =
      _$DescriptionEntered;

  String? get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionEnteredCopyWith<DescriptionEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEnteredCopyWith<$Res> {
  factory $LocationEnteredCopyWith(
          LocationEntered value, $Res Function(LocationEntered) then) =
      _$LocationEnteredCopyWithImpl<$Res>;
  $Res call({double? lat, double? lon});
}

/// @nodoc
class _$LocationEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements $LocationEnteredCopyWith<$Res> {
  _$LocationEnteredCopyWithImpl(
      LocationEntered _value, $Res Function(LocationEntered) _then)
      : super(_value, (v) => _then(v as LocationEntered));

  @override
  LocationEntered get _value => super._value as LocationEntered;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(LocationEntered(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
class _$LocationEntered implements LocationEntered {
  const _$LocationEntered({required this.lat, required this.lon});

  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'OnboardingEvent.locationEntered(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationEntered &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon);

  @JsonKey(ignore: true)
  @override
  $LocationEnteredCopyWith<LocationEntered> get copyWith =>
      _$LocationEnteredCopyWithImpl<LocationEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return locationEntered(lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (locationEntered != null) {
      return locationEntered(lat, lon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return locationEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (locationEntered != null) {
      return locationEntered(this);
    }
    return orElse();
  }
}

abstract class LocationEntered implements OnboardingEvent {
  const factory LocationEntered({required double? lat, required double? lon}) =
      _$LocationEntered;

  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationEnteredCopyWith<LocationEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedCopyWith<$Res> {
  factory $FinishedCopyWith(Finished value, $Res Function(Finished) then) =
      _$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FinishedCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements $FinishedCopyWith<$Res> {
  _$FinishedCopyWithImpl(Finished _value, $Res Function(Finished) _then)
      : super(_value, (v) => _then(v as Finished));

  @override
  Finished get _value => super._value as Finished;
}

/// @nodoc
class _$Finished implements Finished {
  const _$Finished();

  @override
  String toString() {
    return 'OnboardingEvent.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameEntered,
    required TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)
        birthDataEntered,
    required TResult Function(Gender? gender, Gender? interestedIn)
        genderEntered,
    required TResult Function(File? file) photoAdd,
    required TResult Function(int? index) photoDelete,
    required TResult Function(String? description) descriptionEntered,
    required TResult Function(double? lat, double? lon) locationEntered,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameEntered,
    TResult Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult Function(File? file)? photoAdd,
    TResult Function(int? index)? photoDelete,
    TResult Function(String? description)? descriptionEntered,
    TResult Function(double? lat, double? lon)? locationEntered,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameEntered value) nameEntered,
    required TResult Function(BirthDataEntered value) birthDataEntered,
    required TResult Function(GenderEntered value) genderEntered,
    required TResult Function(PhotoAdd value) photoAdd,
    required TResult Function(PhotoDelete value) photoDelete,
    required TResult Function(DescriptionEntered value) descriptionEntered,
    required TResult Function(LocationEntered value) locationEntered,
    required TResult Function(Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameEntered value)? nameEntered,
    TResult Function(BirthDataEntered value)? birthDataEntered,
    TResult Function(GenderEntered value)? genderEntered,
    TResult Function(PhotoAdd value)? photoAdd,
    TResult Function(PhotoDelete value)? photoDelete,
    TResult Function(DescriptionEntered value)? descriptionEntered,
    TResult Function(LocationEntered value)? locationEntered,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished implements OnboardingEvent {
  const factory Finished() = _$Finished;
}
