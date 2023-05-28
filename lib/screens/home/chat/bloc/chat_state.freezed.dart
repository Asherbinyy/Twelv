// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MatchedProfile> matches) data,
    required TResult Function(CreatedChannel newChannel) newChannel,
    required TResult Function(Object error) error,
    required TResult Function(int userId) previewUser,
    required TResult Function() loading,
    required TResult Function() reportedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MatchedProfile> matches)? data,
    TResult? Function(CreatedChannel newChannel)? newChannel,
    TResult? Function(Object error)? error,
    TResult? Function(int userId)? previewUser,
    TResult? Function()? loading,
    TResult? Function()? reportedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MatchedProfile> matches)? data,
    TResult Function(CreatedChannel newChannel)? newChannel,
    TResult Function(Object error)? error,
    TResult Function(int userId)? previewUser,
    TResult Function()? loading,
    TResult Function()? reportedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatData value) data,
    required TResult Function(NewChannel value) newChannel,
    required TResult Function(Error value) error,
    required TResult Function(PreviewUser value) previewUser,
    required TResult Function(Loading value) loading,
    required TResult Function(ReportedUser value) reportedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatData value)? data,
    TResult? Function(NewChannel value)? newChannel,
    TResult? Function(Error value)? error,
    TResult? Function(PreviewUser value)? previewUser,
    TResult? Function(Loading value)? loading,
    TResult? Function(ReportedUser value)? reportedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatData value)? data,
    TResult Function(NewChannel value)? newChannel,
    TResult Function(Error value)? error,
    TResult Function(PreviewUser value)? previewUser,
    TResult Function(Loading value)? loading,
    TResult Function(ReportedUser value)? reportedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatDataCopyWith<$Res> {
  factory _$$ChatDataCopyWith(
          _$ChatData value, $Res Function(_$ChatData) then) =
      __$$ChatDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MatchedProfile> matches});
}

/// @nodoc
class __$$ChatDataCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatData>
    implements _$$ChatDataCopyWith<$Res> {
  __$$ChatDataCopyWithImpl(_$ChatData _value, $Res Function(_$ChatData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
  }) {
    return _then(_$ChatData(
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<MatchedProfile>,
    ));
  }
}

/// @nodoc

class _$ChatData implements ChatData {
  const _$ChatData({required final List<MatchedProfile> matches})
      : _matches = matches;

  final List<MatchedProfile> _matches;
  @override
  List<MatchedProfile> get matches {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString() {
    return 'ChatState.data(matches: $matches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatData &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDataCopyWith<_$ChatData> get copyWith =>
      __$$ChatDataCopyWithImpl<_$ChatData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MatchedProfile> matches) data,
    required TResult Function(CreatedChannel newChannel) newChannel,
    required TResult Function(Object error) error,
    required TResult Function(int userId) previewUser,
    required TResult Function() loading,
    required TResult Function() reportedUser,
  }) {
    return data(matches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MatchedProfile> matches)? data,
    TResult? Function(CreatedChannel newChannel)? newChannel,
    TResult? Function(Object error)? error,
    TResult? Function(int userId)? previewUser,
    TResult? Function()? loading,
    TResult? Function()? reportedUser,
  }) {
    return data?.call(matches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MatchedProfile> matches)? data,
    TResult Function(CreatedChannel newChannel)? newChannel,
    TResult Function(Object error)? error,
    TResult Function(int userId)? previewUser,
    TResult Function()? loading,
    TResult Function()? reportedUser,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(matches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatData value) data,
    required TResult Function(NewChannel value) newChannel,
    required TResult Function(Error value) error,
    required TResult Function(PreviewUser value) previewUser,
    required TResult Function(Loading value) loading,
    required TResult Function(ReportedUser value) reportedUser,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatData value)? data,
    TResult? Function(NewChannel value)? newChannel,
    TResult? Function(Error value)? error,
    TResult? Function(PreviewUser value)? previewUser,
    TResult? Function(Loading value)? loading,
    TResult? Function(ReportedUser value)? reportedUser,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatData value)? data,
    TResult Function(NewChannel value)? newChannel,
    TResult Function(Error value)? error,
    TResult Function(PreviewUser value)? previewUser,
    TResult Function(Loading value)? loading,
    TResult Function(ReportedUser value)? reportedUser,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ChatData implements ChatState {
  const factory ChatData({required final List<MatchedProfile> matches}) =
      _$ChatData;

  List<MatchedProfile> get matches;
  @JsonKey(ignore: true)
  _$$ChatDataCopyWith<_$ChatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewChannelCopyWith<$Res> {
  factory _$$NewChannelCopyWith(
          _$NewChannel value, $Res Function(_$NewChannel) then) =
      __$$NewChannelCopyWithImpl<$Res>;
  @useResult
  $Res call({CreatedChannel newChannel});
}

/// @nodoc
class __$$NewChannelCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$NewChannel>
    implements _$$NewChannelCopyWith<$Res> {
  __$$NewChannelCopyWithImpl(
      _$NewChannel _value, $Res Function(_$NewChannel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newChannel = null,
  }) {
    return _then(_$NewChannel(
      null == newChannel
          ? _value.newChannel
          : newChannel // ignore: cast_nullable_to_non_nullable
              as CreatedChannel,
    ));
  }
}

/// @nodoc

class _$NewChannel implements NewChannel {
  const _$NewChannel(this.newChannel);

  @override
  final CreatedChannel newChannel;

  @override
  String toString() {
    return 'ChatState.newChannel(newChannel: $newChannel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewChannel &&
            (identical(other.newChannel, newChannel) ||
                other.newChannel == newChannel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newChannel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewChannelCopyWith<_$NewChannel> get copyWith =>
      __$$NewChannelCopyWithImpl<_$NewChannel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MatchedProfile> matches) data,
    required TResult Function(CreatedChannel newChannel) newChannel,
    required TResult Function(Object error) error,
    required TResult Function(int userId) previewUser,
    required TResult Function() loading,
    required TResult Function() reportedUser,
  }) {
    return newChannel(this.newChannel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MatchedProfile> matches)? data,
    TResult? Function(CreatedChannel newChannel)? newChannel,
    TResult? Function(Object error)? error,
    TResult? Function(int userId)? previewUser,
    TResult? Function()? loading,
    TResult? Function()? reportedUser,
  }) {
    return newChannel?.call(this.newChannel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MatchedProfile> matches)? data,
    TResult Function(CreatedChannel newChannel)? newChannel,
    TResult Function(Object error)? error,
    TResult Function(int userId)? previewUser,
    TResult Function()? loading,
    TResult Function()? reportedUser,
    required TResult orElse(),
  }) {
    if (newChannel != null) {
      return newChannel(this.newChannel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatData value) data,
    required TResult Function(NewChannel value) newChannel,
    required TResult Function(Error value) error,
    required TResult Function(PreviewUser value) previewUser,
    required TResult Function(Loading value) loading,
    required TResult Function(ReportedUser value) reportedUser,
  }) {
    return newChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatData value)? data,
    TResult? Function(NewChannel value)? newChannel,
    TResult? Function(Error value)? error,
    TResult? Function(PreviewUser value)? previewUser,
    TResult? Function(Loading value)? loading,
    TResult? Function(ReportedUser value)? reportedUser,
  }) {
    return newChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatData value)? data,
    TResult Function(NewChannel value)? newChannel,
    TResult Function(Error value)? error,
    TResult Function(PreviewUser value)? previewUser,
    TResult Function(Loading value)? loading,
    TResult Function(ReportedUser value)? reportedUser,
    required TResult orElse(),
  }) {
    if (newChannel != null) {
      return newChannel(this);
    }
    return orElse();
  }
}

abstract class NewChannel implements ChatState {
  const factory NewChannel(final CreatedChannel newChannel) = _$NewChannel;

  CreatedChannel get newChannel;
  @JsonKey(ignore: true)
  _$$NewChannelCopyWith<_$NewChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Error(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'ChatState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MatchedProfile> matches) data,
    required TResult Function(CreatedChannel newChannel) newChannel,
    required TResult Function(Object error) error,
    required TResult Function(int userId) previewUser,
    required TResult Function() loading,
    required TResult Function() reportedUser,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MatchedProfile> matches)? data,
    TResult? Function(CreatedChannel newChannel)? newChannel,
    TResult? Function(Object error)? error,
    TResult? Function(int userId)? previewUser,
    TResult? Function()? loading,
    TResult? Function()? reportedUser,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MatchedProfile> matches)? data,
    TResult Function(CreatedChannel newChannel)? newChannel,
    TResult Function(Object error)? error,
    TResult Function(int userId)? previewUser,
    TResult Function()? loading,
    TResult Function()? reportedUser,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatData value) data,
    required TResult Function(NewChannel value) newChannel,
    required TResult Function(Error value) error,
    required TResult Function(PreviewUser value) previewUser,
    required TResult Function(Loading value) loading,
    required TResult Function(ReportedUser value) reportedUser,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatData value)? data,
    TResult? Function(NewChannel value)? newChannel,
    TResult? Function(Error value)? error,
    TResult? Function(PreviewUser value)? previewUser,
    TResult? Function(Loading value)? loading,
    TResult? Function(ReportedUser value)? reportedUser,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatData value)? data,
    TResult Function(NewChannel value)? newChannel,
    TResult Function(Error value)? error,
    TResult Function(PreviewUser value)? previewUser,
    TResult Function(Loading value)? loading,
    TResult Function(ReportedUser value)? reportedUser,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ChatState {
  const factory Error(final Object error) = _$Error;

  Object get error;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewUserCopyWith<$Res> {
  factory _$$PreviewUserCopyWith(
          _$PreviewUser value, $Res Function(_$PreviewUser) then) =
      __$$PreviewUserCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$PreviewUserCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$PreviewUser>
    implements _$$PreviewUserCopyWith<$Res> {
  __$$PreviewUserCopyWithImpl(
      _$PreviewUser _value, $Res Function(_$PreviewUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$PreviewUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PreviewUser implements PreviewUser {
  const _$PreviewUser({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'ChatState.previewUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewUser &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewUserCopyWith<_$PreviewUser> get copyWith =>
      __$$PreviewUserCopyWithImpl<_$PreviewUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MatchedProfile> matches) data,
    required TResult Function(CreatedChannel newChannel) newChannel,
    required TResult Function(Object error) error,
    required TResult Function(int userId) previewUser,
    required TResult Function() loading,
    required TResult Function() reportedUser,
  }) {
    return previewUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MatchedProfile> matches)? data,
    TResult? Function(CreatedChannel newChannel)? newChannel,
    TResult? Function(Object error)? error,
    TResult? Function(int userId)? previewUser,
    TResult? Function()? loading,
    TResult? Function()? reportedUser,
  }) {
    return previewUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MatchedProfile> matches)? data,
    TResult Function(CreatedChannel newChannel)? newChannel,
    TResult Function(Object error)? error,
    TResult Function(int userId)? previewUser,
    TResult Function()? loading,
    TResult Function()? reportedUser,
    required TResult orElse(),
  }) {
    if (previewUser != null) {
      return previewUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatData value) data,
    required TResult Function(NewChannel value) newChannel,
    required TResult Function(Error value) error,
    required TResult Function(PreviewUser value) previewUser,
    required TResult Function(Loading value) loading,
    required TResult Function(ReportedUser value) reportedUser,
  }) {
    return previewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatData value)? data,
    TResult? Function(NewChannel value)? newChannel,
    TResult? Function(Error value)? error,
    TResult? Function(PreviewUser value)? previewUser,
    TResult? Function(Loading value)? loading,
    TResult? Function(ReportedUser value)? reportedUser,
  }) {
    return previewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatData value)? data,
    TResult Function(NewChannel value)? newChannel,
    TResult Function(Error value)? error,
    TResult Function(PreviewUser value)? previewUser,
    TResult Function(Loading value)? loading,
    TResult Function(ReportedUser value)? reportedUser,
    required TResult orElse(),
  }) {
    if (previewUser != null) {
      return previewUser(this);
    }
    return orElse();
  }
}

abstract class PreviewUser implements ChatState {
  const factory PreviewUser({required final int userId}) = _$PreviewUser;

  int get userId;
  @JsonKey(ignore: true)
  _$$PreviewUserCopyWith<_$PreviewUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MatchedProfile> matches) data,
    required TResult Function(CreatedChannel newChannel) newChannel,
    required TResult Function(Object error) error,
    required TResult Function(int userId) previewUser,
    required TResult Function() loading,
    required TResult Function() reportedUser,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MatchedProfile> matches)? data,
    TResult? Function(CreatedChannel newChannel)? newChannel,
    TResult? Function(Object error)? error,
    TResult? Function(int userId)? previewUser,
    TResult? Function()? loading,
    TResult? Function()? reportedUser,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MatchedProfile> matches)? data,
    TResult Function(CreatedChannel newChannel)? newChannel,
    TResult Function(Object error)? error,
    TResult Function(int userId)? previewUser,
    TResult Function()? loading,
    TResult Function()? reportedUser,
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
    required TResult Function(ChatData value) data,
    required TResult Function(NewChannel value) newChannel,
    required TResult Function(Error value) error,
    required TResult Function(PreviewUser value) previewUser,
    required TResult Function(Loading value) loading,
    required TResult Function(ReportedUser value) reportedUser,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatData value)? data,
    TResult? Function(NewChannel value)? newChannel,
    TResult? Function(Error value)? error,
    TResult? Function(PreviewUser value)? previewUser,
    TResult? Function(Loading value)? loading,
    TResult? Function(ReportedUser value)? reportedUser,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatData value)? data,
    TResult Function(NewChannel value)? newChannel,
    TResult Function(Error value)? error,
    TResult Function(PreviewUser value)? previewUser,
    TResult Function(Loading value)? loading,
    TResult Function(ReportedUser value)? reportedUser,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ChatState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ReportedUserCopyWith<$Res> {
  factory _$$ReportedUserCopyWith(
          _$ReportedUser value, $Res Function(_$ReportedUser) then) =
      __$$ReportedUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReportedUserCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ReportedUser>
    implements _$$ReportedUserCopyWith<$Res> {
  __$$ReportedUserCopyWithImpl(
      _$ReportedUser _value, $Res Function(_$ReportedUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReportedUser implements ReportedUser {
  const _$ReportedUser();

  @override
  String toString() {
    return 'ChatState.reportedUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReportedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MatchedProfile> matches) data,
    required TResult Function(CreatedChannel newChannel) newChannel,
    required TResult Function(Object error) error,
    required TResult Function(int userId) previewUser,
    required TResult Function() loading,
    required TResult Function() reportedUser,
  }) {
    return reportedUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MatchedProfile> matches)? data,
    TResult? Function(CreatedChannel newChannel)? newChannel,
    TResult? Function(Object error)? error,
    TResult? Function(int userId)? previewUser,
    TResult? Function()? loading,
    TResult? Function()? reportedUser,
  }) {
    return reportedUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MatchedProfile> matches)? data,
    TResult Function(CreatedChannel newChannel)? newChannel,
    TResult Function(Object error)? error,
    TResult Function(int userId)? previewUser,
    TResult Function()? loading,
    TResult Function()? reportedUser,
    required TResult orElse(),
  }) {
    if (reportedUser != null) {
      return reportedUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatData value) data,
    required TResult Function(NewChannel value) newChannel,
    required TResult Function(Error value) error,
    required TResult Function(PreviewUser value) previewUser,
    required TResult Function(Loading value) loading,
    required TResult Function(ReportedUser value) reportedUser,
  }) {
    return reportedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatData value)? data,
    TResult? Function(NewChannel value)? newChannel,
    TResult? Function(Error value)? error,
    TResult? Function(PreviewUser value)? previewUser,
    TResult? Function(Loading value)? loading,
    TResult? Function(ReportedUser value)? reportedUser,
  }) {
    return reportedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatData value)? data,
    TResult Function(NewChannel value)? newChannel,
    TResult Function(Error value)? error,
    TResult Function(PreviewUser value)? previewUser,
    TResult Function(Loading value)? loading,
    TResult Function(ReportedUser value)? reportedUser,
    required TResult orElse(),
  }) {
    if (reportedUser != null) {
      return reportedUser(this);
    }
    return orElse();
  }
}

abstract class ReportedUser implements ChatState {
  const factory ReportedUser() = _$ReportedUser;
}
