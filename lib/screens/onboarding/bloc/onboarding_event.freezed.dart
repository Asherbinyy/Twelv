// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
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
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameEnteredCopyWith<$Res> {
  factory _$$NameEnteredCopyWith(
          _$NameEntered value, $Res Function(_$NameEntered) then) =
      __$$NameEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$NameEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$NameEntered>
    implements _$$NameEnteredCopyWith<$Res> {
  __$$NameEnteredCopyWithImpl(
      _$NameEntered _value, $Res Function(_$NameEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$NameEntered(
      name: freezed == name
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
        (other.runtimeType == runtimeType &&
            other is _$NameEntered &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameEnteredCopyWith<_$NameEntered> get copyWith =>
      __$$NameEnteredCopyWithImpl<_$NameEntered>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return nameEntered?.call(name);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return nameEntered?.call(this);
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
  const factory NameEntered({required final String? name}) = _$NameEntered;

  String? get name;
  @JsonKey(ignore: true)
  _$$NameEnteredCopyWith<_$NameEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirthDataEnteredCopyWith<$Res> {
  factory _$$BirthDataEnteredCopyWith(
          _$BirthDataEntered value, $Res Function(_$BirthDataEntered) then) =
      __$$BirthDataEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime? birthDate,
      TimeOfDay? birthTime,
      PlacesDetails? birthLocation});
}

/// @nodoc
class __$$BirthDataEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$BirthDataEntered>
    implements _$$BirthDataEnteredCopyWith<$Res> {
  __$$BirthDataEnteredCopyWithImpl(
      _$BirthDataEntered _value, $Res Function(_$BirthDataEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? birthTime = freezed,
    Object? birthLocation = freezed,
  }) {
    return _then(_$BirthDataEntered(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthTime: freezed == birthTime
          ? _value.birthTime
          : birthTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      birthLocation: freezed == birthLocation
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
        (other.runtimeType == runtimeType &&
            other is _$BirthDataEntered &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthTime, birthTime) ||
                other.birthTime == birthTime) &&
            (identical(other.birthLocation, birthLocation) ||
                other.birthLocation == birthLocation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, birthDate, birthTime, birthLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthDataEnteredCopyWith<_$BirthDataEntered> get copyWith =>
      __$$BirthDataEnteredCopyWithImpl<_$BirthDataEntered>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return birthDataEntered?.call(birthDate, birthTime, birthLocation);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return birthDataEntered?.call(this);
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
      {required final DateTime? birthDate,
      required final TimeOfDay? birthTime,
      required final PlacesDetails? birthLocation}) = _$BirthDataEntered;

  DateTime? get birthDate;
  TimeOfDay? get birthTime;
  PlacesDetails? get birthLocation;
  @JsonKey(ignore: true)
  _$$BirthDataEnteredCopyWith<_$BirthDataEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderEnteredCopyWith<$Res> {
  factory _$$GenderEnteredCopyWith(
          _$GenderEntered value, $Res Function(_$GenderEntered) then) =
      __$$GenderEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender? gender, Gender? interestedIn});
}

/// @nodoc
class __$$GenderEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$GenderEntered>
    implements _$$GenderEnteredCopyWith<$Res> {
  __$$GenderEnteredCopyWithImpl(
      _$GenderEntered _value, $Res Function(_$GenderEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? interestedIn = freezed,
  }) {
    return _then(_$GenderEntered(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      interestedIn: freezed == interestedIn
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
        (other.runtimeType == runtimeType &&
            other is _$GenderEntered &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.interestedIn, interestedIn) ||
                other.interestedIn == interestedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, interestedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderEnteredCopyWith<_$GenderEntered> get copyWith =>
      __$$GenderEnteredCopyWithImpl<_$GenderEntered>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return genderEntered?.call(gender, interestedIn);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return genderEntered?.call(this);
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
      {required final Gender? gender,
      required final Gender? interestedIn}) = _$GenderEntered;

  Gender? get gender;
  Gender? get interestedIn;
  @JsonKey(ignore: true)
  _$$GenderEnteredCopyWith<_$GenderEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoAddCopyWith<$Res> {
  factory _$$PhotoAddCopyWith(
          _$PhotoAdd value, $Res Function(_$PhotoAdd) then) =
      __$$PhotoAddCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$PhotoAddCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$PhotoAdd>
    implements _$$PhotoAddCopyWith<$Res> {
  __$$PhotoAddCopyWithImpl(_$PhotoAdd _value, $Res Function(_$PhotoAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$PhotoAdd(
      file: freezed == file
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
        (other.runtimeType == runtimeType &&
            other is _$PhotoAdd &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoAddCopyWith<_$PhotoAdd> get copyWith =>
      __$$PhotoAddCopyWithImpl<_$PhotoAdd>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return photoAdd?.call(file);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return photoAdd?.call(this);
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
  const factory PhotoAdd({required final File? file}) = _$PhotoAdd;

  File? get file;
  @JsonKey(ignore: true)
  _$$PhotoAddCopyWith<_$PhotoAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoDeleteCopyWith<$Res> {
  factory _$$PhotoDeleteCopyWith(
          _$PhotoDelete value, $Res Function(_$PhotoDelete) then) =
      __$$PhotoDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$PhotoDeleteCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$PhotoDelete>
    implements _$$PhotoDeleteCopyWith<$Res> {
  __$$PhotoDeleteCopyWithImpl(
      _$PhotoDelete _value, $Res Function(_$PhotoDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$PhotoDelete(
      index: freezed == index
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
        (other.runtimeType == runtimeType &&
            other is _$PhotoDelete &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoDeleteCopyWith<_$PhotoDelete> get copyWith =>
      __$$PhotoDeleteCopyWithImpl<_$PhotoDelete>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return photoDelete?.call(index);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return photoDelete?.call(this);
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
  const factory PhotoDelete({required final int? index}) = _$PhotoDelete;

  int? get index;
  @JsonKey(ignore: true)
  _$$PhotoDeleteCopyWith<_$PhotoDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionEnteredCopyWith<$Res> {
  factory _$$DescriptionEnteredCopyWith(_$DescriptionEntered value,
          $Res Function(_$DescriptionEntered) then) =
      __$$DescriptionEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$DescriptionEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$DescriptionEntered>
    implements _$$DescriptionEnteredCopyWith<$Res> {
  __$$DescriptionEnteredCopyWithImpl(
      _$DescriptionEntered _value, $Res Function(_$DescriptionEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$DescriptionEntered(
      description: freezed == description
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
        (other.runtimeType == runtimeType &&
            other is _$DescriptionEntered &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionEnteredCopyWith<_$DescriptionEntered> get copyWith =>
      __$$DescriptionEnteredCopyWithImpl<_$DescriptionEntered>(
          this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return descriptionEntered?.call(description);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return descriptionEntered?.call(this);
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
  const factory DescriptionEntered({required final String? description}) =
      _$DescriptionEntered;

  String? get description;
  @JsonKey(ignore: true)
  _$$DescriptionEnteredCopyWith<_$DescriptionEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationEnteredCopyWith<$Res> {
  factory _$$LocationEnteredCopyWith(
          _$LocationEntered value, $Res Function(_$LocationEntered) then) =
      __$$LocationEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({double? lat, double? lon});
}

/// @nodoc
class __$$LocationEnteredCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$LocationEntered>
    implements _$$LocationEnteredCopyWith<$Res> {
  __$$LocationEnteredCopyWithImpl(
      _$LocationEntered _value, $Res Function(_$LocationEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$LocationEntered(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
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
        (other.runtimeType == runtimeType &&
            other is _$LocationEntered &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationEnteredCopyWith<_$LocationEntered> get copyWith =>
      __$$LocationEnteredCopyWithImpl<_$LocationEntered>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return locationEntered?.call(lat, lon);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return locationEntered?.call(this);
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
  const factory LocationEntered(
      {required final double? lat,
      required final double? lon}) = _$LocationEntered;

  double? get lat;
  double? get lon;
  @JsonKey(ignore: true)
  _$$LocationEnteredCopyWith<_$LocationEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedCopyWith<$Res> {
  factory _$$FinishedCopyWith(
          _$Finished value, $Res Function(_$Finished) then) =
      __$$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$Finished>
    implements _$$FinishedCopyWith<$Res> {
  __$$FinishedCopyWithImpl(_$Finished _value, $Res Function(_$Finished) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Finished);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? nameEntered,
    TResult? Function(DateTime? birthDate, TimeOfDay? birthTime,
            PlacesDetails? birthLocation)?
        birthDataEntered,
    TResult? Function(Gender? gender, Gender? interestedIn)? genderEntered,
    TResult? Function(File? file)? photoAdd,
    TResult? Function(int? index)? photoDelete,
    TResult? Function(String? description)? descriptionEntered,
    TResult? Function(double? lat, double? lon)? locationEntered,
    TResult? Function()? finished,
  }) {
    return finished?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameEntered value)? nameEntered,
    TResult? Function(BirthDataEntered value)? birthDataEntered,
    TResult? Function(GenderEntered value)? genderEntered,
    TResult? Function(PhotoAdd value)? photoAdd,
    TResult? Function(PhotoDelete value)? photoDelete,
    TResult? Function(DescriptionEntered value)? descriptionEntered,
    TResult? Function(LocationEntered value)? locationEntered,
    TResult? Function(Finished value)? finished,
  }) {
    return finished?.call(this);
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
