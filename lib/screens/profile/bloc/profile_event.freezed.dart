// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  AddPhoto addPhoto(File file) {
    return AddPhoto(
      file,
    );
  }

  DelPhoto delPhoto(int id) {
    return DelPhoto(
      id,
    );
  }

  UpdateUser updateUser(CurrentUser currentUser) {
    return UpdateUser(
      currentUser,
    );
  }

  ReloadUser reloadUser() {
    return const ReloadUser();
  }

  Delete delete() {
    return const Delete();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(int id) delPhoto,
    required TResult Function(CurrentUser currentUser) updateUser,
    required TResult Function() reloadUser,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(int id)? delPhoto,
    TResult Function(CurrentUser currentUser)? updateUser,
    TResult Function()? reloadUser,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPhoto value) addPhoto,
    required TResult Function(DelPhoto value) delPhoto,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ReloadUser value) reloadUser,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPhoto value)? addPhoto,
    TResult Function(DelPhoto value)? delPhoto,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ReloadUser value)? reloadUser,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class $AddPhotoCopyWith<$Res> {
  factory $AddPhotoCopyWith(AddPhoto value, $Res Function(AddPhoto) then) =
      _$AddPhotoCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class _$AddPhotoCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $AddPhotoCopyWith<$Res> {
  _$AddPhotoCopyWithImpl(AddPhoto _value, $Res Function(AddPhoto) _then)
      : super(_value, (v) => _then(v as AddPhoto));

  @override
  AddPhoto get _value => super._value as AddPhoto;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(AddPhoto(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$AddPhoto implements AddPhoto {
  const _$AddPhoto(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'ProfileEvent.addPhoto(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddPhoto &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  $AddPhotoCopyWith<AddPhoto> get copyWith =>
      _$AddPhotoCopyWithImpl<AddPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(int id) delPhoto,
    required TResult Function(CurrentUser currentUser) updateUser,
    required TResult Function() reloadUser,
    required TResult Function() delete,
  }) {
    return addPhoto(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(int id)? delPhoto,
    TResult Function(CurrentUser currentUser)? updateUser,
    TResult Function()? reloadUser,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPhoto value) addPhoto,
    required TResult Function(DelPhoto value) delPhoto,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ReloadUser value) reloadUser,
    required TResult Function(Delete value) delete,
  }) {
    return addPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPhoto value)? addPhoto,
    TResult Function(DelPhoto value)? delPhoto,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ReloadUser value)? reloadUser,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(this);
    }
    return orElse();
  }
}

abstract class AddPhoto implements ProfileEvent {
  const factory AddPhoto(File file) = _$AddPhoto;

  File get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPhotoCopyWith<AddPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DelPhotoCopyWith<$Res> {
  factory $DelPhotoCopyWith(DelPhoto value, $Res Function(DelPhoto) then) =
      _$DelPhotoCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$DelPhotoCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $DelPhotoCopyWith<$Res> {
  _$DelPhotoCopyWithImpl(DelPhoto _value, $Res Function(DelPhoto) _then)
      : super(_value, (v) => _then(v as DelPhoto));

  @override
  DelPhoto get _value => super._value as DelPhoto;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(DelPhoto(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$DelPhoto implements DelPhoto {
  const _$DelPhoto(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.delPhoto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DelPhoto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $DelPhotoCopyWith<DelPhoto> get copyWith =>
      _$DelPhotoCopyWithImpl<DelPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(int id) delPhoto,
    required TResult Function(CurrentUser currentUser) updateUser,
    required TResult Function() reloadUser,
    required TResult Function() delete,
  }) {
    return delPhoto(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(int id)? delPhoto,
    TResult Function(CurrentUser currentUser)? updateUser,
    TResult Function()? reloadUser,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delPhoto != null) {
      return delPhoto(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPhoto value) addPhoto,
    required TResult Function(DelPhoto value) delPhoto,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ReloadUser value) reloadUser,
    required TResult Function(Delete value) delete,
  }) {
    return delPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPhoto value)? addPhoto,
    TResult Function(DelPhoto value)? delPhoto,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ReloadUser value)? reloadUser,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delPhoto != null) {
      return delPhoto(this);
    }
    return orElse();
  }
}

abstract class DelPhoto implements ProfileEvent {
  const factory DelPhoto(int id) = _$DelPhoto;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DelPhotoCopyWith<DelPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserCopyWith<$Res> {
  factory $UpdateUserCopyWith(
          UpdateUser value, $Res Function(UpdateUser) then) =
      _$UpdateUserCopyWithImpl<$Res>;
  $Res call({CurrentUser currentUser});
}

/// @nodoc
class _$UpdateUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $UpdateUserCopyWith<$Res> {
  _$UpdateUserCopyWithImpl(UpdateUser _value, $Res Function(UpdateUser) _then)
      : super(_value, (v) => _then(v as UpdateUser));

  @override
  UpdateUser get _value => super._value as UpdateUser;

  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(UpdateUser(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser,
    ));
  }
}

/// @nodoc
class _$UpdateUser implements UpdateUser {
  const _$UpdateUser(this.currentUser);

  @override
  final CurrentUser currentUser;

  @override
  String toString() {
    return 'ProfileEvent.updateUser(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUser &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUser);

  @JsonKey(ignore: true)
  @override
  $UpdateUserCopyWith<UpdateUser> get copyWith =>
      _$UpdateUserCopyWithImpl<UpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(int id) delPhoto,
    required TResult Function(CurrentUser currentUser) updateUser,
    required TResult Function() reloadUser,
    required TResult Function() delete,
  }) {
    return updateUser(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(int id)? delPhoto,
    TResult Function(CurrentUser currentUser)? updateUser,
    TResult Function()? reloadUser,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPhoto value) addPhoto,
    required TResult Function(DelPhoto value) delPhoto,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ReloadUser value) reloadUser,
    required TResult Function(Delete value) delete,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPhoto value)? addPhoto,
    TResult Function(DelPhoto value)? delPhoto,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ReloadUser value)? reloadUser,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUser implements ProfileEvent {
  const factory UpdateUser(CurrentUser currentUser) = _$UpdateUser;

  CurrentUser get currentUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserCopyWith<UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReloadUserCopyWith<$Res> {
  factory $ReloadUserCopyWith(
          ReloadUser value, $Res Function(ReloadUser) then) =
      _$ReloadUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReloadUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $ReloadUserCopyWith<$Res> {
  _$ReloadUserCopyWithImpl(ReloadUser _value, $Res Function(ReloadUser) _then)
      : super(_value, (v) => _then(v as ReloadUser));

  @override
  ReloadUser get _value => super._value as ReloadUser;
}

/// @nodoc
class _$ReloadUser implements ReloadUser {
  const _$ReloadUser();

  @override
  String toString() {
    return 'ProfileEvent.reloadUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReloadUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(int id) delPhoto,
    required TResult Function(CurrentUser currentUser) updateUser,
    required TResult Function() reloadUser,
    required TResult Function() delete,
  }) {
    return reloadUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(int id)? delPhoto,
    TResult Function(CurrentUser currentUser)? updateUser,
    TResult Function()? reloadUser,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (reloadUser != null) {
      return reloadUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPhoto value) addPhoto,
    required TResult Function(DelPhoto value) delPhoto,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ReloadUser value) reloadUser,
    required TResult Function(Delete value) delete,
  }) {
    return reloadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPhoto value)? addPhoto,
    TResult Function(DelPhoto value)? delPhoto,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ReloadUser value)? reloadUser,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (reloadUser != null) {
      return reloadUser(this);
    }
    return orElse();
  }
}

abstract class ReloadUser implements ProfileEvent {
  const factory ReloadUser() = _$ReloadUser;
}

/// @nodoc
abstract class $DeleteCopyWith<$Res> {
  factory $DeleteCopyWith(Delete value, $Res Function(Delete) then) =
      _$DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $DeleteCopyWith<$Res> {
  _$DeleteCopyWithImpl(Delete _value, $Res Function(Delete) _then)
      : super(_value, (v) => _then(v as Delete));

  @override
  Delete get _value => super._value as Delete;
}

/// @nodoc
class _$Delete implements Delete {
  const _$Delete();

  @override
  String toString() {
    return 'ProfileEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(int id) delPhoto,
    required TResult Function(CurrentUser currentUser) updateUser,
    required TResult Function() reloadUser,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(int id)? delPhoto,
    TResult Function(CurrentUser currentUser)? updateUser,
    TResult Function()? reloadUser,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPhoto value) addPhoto,
    required TResult Function(DelPhoto value) delPhoto,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(ReloadUser value) reloadUser,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPhoto value)? addPhoto,
    TResult Function(DelPhoto value)? delPhoto,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(ReloadUser value)? reloadUser,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements ProfileEvent {
  const factory Delete() = _$Delete;
}
