// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(int id)? delPhoto,
    TResult? Function(CurrentUser currentUser)? updateUser,
    TResult? Function()? reloadUser,
    TResult? Function()? delete,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPhoto value)? addPhoto,
    TResult? Function(DelPhoto value)? delPhoto,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ReloadUser value)? reloadUser,
    TResult? Function(Delete value)? delete,
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
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPhotoCopyWith<$Res> {
  factory _$$AddPhotoCopyWith(
          _$AddPhoto value, $Res Function(_$AddPhoto) then) =
      __$$AddPhotoCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$AddPhotoCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$AddPhoto>
    implements _$$AddPhotoCopyWith<$Res> {
  __$$AddPhotoCopyWithImpl(_$AddPhoto _value, $Res Function(_$AddPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$AddPhoto(
      null == file
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
        (other.runtimeType == runtimeType &&
            other is _$AddPhoto &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPhotoCopyWith<_$AddPhoto> get copyWith =>
      __$$AddPhotoCopyWithImpl<_$AddPhoto>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(int id)? delPhoto,
    TResult? Function(CurrentUser currentUser)? updateUser,
    TResult? Function()? reloadUser,
    TResult? Function()? delete,
  }) {
    return addPhoto?.call(file);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPhoto value)? addPhoto,
    TResult? Function(DelPhoto value)? delPhoto,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ReloadUser value)? reloadUser,
    TResult? Function(Delete value)? delete,
  }) {
    return addPhoto?.call(this);
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
  const factory AddPhoto(final File file) = _$AddPhoto;

  File get file;
  @JsonKey(ignore: true)
  _$$AddPhotoCopyWith<_$AddPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DelPhotoCopyWith<$Res> {
  factory _$$DelPhotoCopyWith(
          _$DelPhoto value, $Res Function(_$DelPhoto) then) =
      __$$DelPhotoCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DelPhotoCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DelPhoto>
    implements _$$DelPhotoCopyWith<$Res> {
  __$$DelPhotoCopyWithImpl(_$DelPhoto _value, $Res Function(_$DelPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DelPhoto(
      null == id
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
        (other.runtimeType == runtimeType &&
            other is _$DelPhoto &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DelPhotoCopyWith<_$DelPhoto> get copyWith =>
      __$$DelPhotoCopyWithImpl<_$DelPhoto>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(int id)? delPhoto,
    TResult? Function(CurrentUser currentUser)? updateUser,
    TResult? Function()? reloadUser,
    TResult? Function()? delete,
  }) {
    return delPhoto?.call(id);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPhoto value)? addPhoto,
    TResult? Function(DelPhoto value)? delPhoto,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ReloadUser value)? reloadUser,
    TResult? Function(Delete value)? delete,
  }) {
    return delPhoto?.call(this);
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
  const factory DelPhoto(final int id) = _$DelPhoto;

  int get id;
  @JsonKey(ignore: true)
  _$$DelPhotoCopyWith<_$DelPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserCopyWith<$Res> {
  factory _$$UpdateUserCopyWith(
          _$UpdateUser value, $Res Function(_$UpdateUser) then) =
      __$$UpdateUserCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentUser currentUser});
}

/// @nodoc
class __$$UpdateUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUser>
    implements _$$UpdateUserCopyWith<$Res> {
  __$$UpdateUserCopyWithImpl(
      _$UpdateUser _value, $Res Function(_$UpdateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
  }) {
    return _then(_$UpdateUser(
      null == currentUser
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
        (other.runtimeType == runtimeType &&
            other is _$UpdateUser &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserCopyWith<_$UpdateUser> get copyWith =>
      __$$UpdateUserCopyWithImpl<_$UpdateUser>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(int id)? delPhoto,
    TResult? Function(CurrentUser currentUser)? updateUser,
    TResult? Function()? reloadUser,
    TResult? Function()? delete,
  }) {
    return updateUser?.call(currentUser);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPhoto value)? addPhoto,
    TResult? Function(DelPhoto value)? delPhoto,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ReloadUser value)? reloadUser,
    TResult? Function(Delete value)? delete,
  }) {
    return updateUser?.call(this);
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
  const factory UpdateUser(final CurrentUser currentUser) = _$UpdateUser;

  CurrentUser get currentUser;
  @JsonKey(ignore: true)
  _$$UpdateUserCopyWith<_$UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadUserCopyWith<$Res> {
  factory _$$ReloadUserCopyWith(
          _$ReloadUser value, $Res Function(_$ReloadUser) then) =
      __$$ReloadUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ReloadUser>
    implements _$$ReloadUserCopyWith<$Res> {
  __$$ReloadUserCopyWithImpl(
      _$ReloadUser _value, $Res Function(_$ReloadUser) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadUser);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(int id)? delPhoto,
    TResult? Function(CurrentUser currentUser)? updateUser,
    TResult? Function()? reloadUser,
    TResult? Function()? delete,
  }) {
    return reloadUser?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPhoto value)? addPhoto,
    TResult? Function(DelPhoto value)? delPhoto,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ReloadUser value)? reloadUser,
    TResult? Function(Delete value)? delete,
  }) {
    return reloadUser?.call(this);
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
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Delete);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(int id)? delPhoto,
    TResult? Function(CurrentUser currentUser)? updateUser,
    TResult? Function()? reloadUser,
    TResult? Function()? delete,
  }) {
    return delete?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPhoto value)? addPhoto,
    TResult? Function(DelPhoto value)? delPhoto,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(ReloadUser value)? reloadUser,
    TResult? Function(Delete value)? delete,
  }) {
    return delete?.call(this);
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
