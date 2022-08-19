// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  ChatData data({required List<MatchedProfile> matches}) {
    return ChatData(
      matches: matches,
    );
  }

  NewChannel newChannel(CreatedChannel newChannel) {
    return NewChannel(
      newChannel,
    );
  }

  Error error(Object error) {
    return Error(
      error,
    );
  }

  PreviewUser previewUser({required int userId}) {
    return PreviewUser(
      userId: userId,
    );
  }

  Loading loading() {
    return const Loading();
  }

  ReportedUser reportedUser() {
    return const ReportedUser();
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

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
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class $ChatDataCopyWith<$Res> {
  factory $ChatDataCopyWith(ChatData value, $Res Function(ChatData) then) =
      _$ChatDataCopyWithImpl<$Res>;
  $Res call({List<MatchedProfile> matches});
}

/// @nodoc
class _$ChatDataCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatDataCopyWith<$Res> {
  _$ChatDataCopyWithImpl(ChatData _value, $Res Function(ChatData) _then)
      : super(_value, (v) => _then(v as ChatData));

  @override
  ChatData get _value => super._value as ChatData;

  @override
  $Res call({
    Object? matches = freezed,
  }) {
    return _then(ChatData(
      matches: matches == freezed
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<MatchedProfile>,
    ));
  }
}

/// @nodoc
class _$ChatData implements ChatData {
  const _$ChatData({required this.matches});

  @override
  final List<MatchedProfile> matches;

  @override
  String toString() {
    return 'ChatState.data(matches: $matches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatData &&
            (identical(other.matches, matches) ||
                const DeepCollectionEquality().equals(other.matches, matches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(matches);

  @JsonKey(ignore: true)
  @override
  $ChatDataCopyWith<ChatData> get copyWith =>
      _$ChatDataCopyWithImpl<ChatData>(this, _$identity);

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
  const factory ChatData({required List<MatchedProfile> matches}) = _$ChatData;

  List<MatchedProfile> get matches => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDataCopyWith<ChatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewChannelCopyWith<$Res> {
  factory $NewChannelCopyWith(
          NewChannel value, $Res Function(NewChannel) then) =
      _$NewChannelCopyWithImpl<$Res>;
  $Res call({CreatedChannel newChannel});
}

/// @nodoc
class _$NewChannelCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $NewChannelCopyWith<$Res> {
  _$NewChannelCopyWithImpl(NewChannel _value, $Res Function(NewChannel) _then)
      : super(_value, (v) => _then(v as NewChannel));

  @override
  NewChannel get _value => super._value as NewChannel;

  @override
  $Res call({
    Object? newChannel = freezed,
  }) {
    return _then(NewChannel(
      newChannel == freezed
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
        (other is NewChannel &&
            (identical(other.newChannel, newChannel) ||
                const DeepCollectionEquality()
                    .equals(other.newChannel, newChannel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newChannel);

  @JsonKey(ignore: true)
  @override
  $NewChannelCopyWith<NewChannel> get copyWith =>
      _$NewChannelCopyWithImpl<NewChannel>(this, _$identity);

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
  const factory NewChannel(CreatedChannel newChannel) = _$NewChannel;

  CreatedChannel get newChannel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewChannelCopyWith<NewChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
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
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

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
  const factory Error(Object error) = _$Error;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewUserCopyWith<$Res> {
  factory $PreviewUserCopyWith(
          PreviewUser value, $Res Function(PreviewUser) then) =
      _$PreviewUserCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$PreviewUserCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $PreviewUserCopyWith<$Res> {
  _$PreviewUserCopyWithImpl(
      PreviewUser _value, $Res Function(PreviewUser) _then)
      : super(_value, (v) => _then(v as PreviewUser));

  @override
  PreviewUser get _value => super._value as PreviewUser;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(PreviewUser(
      userId: userId == freezed
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
        (other is PreviewUser &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $PreviewUserCopyWith<PreviewUser> get copyWith =>
      _$PreviewUserCopyWithImpl<PreviewUser>(this, _$identity);

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
  const factory PreviewUser({required int userId}) = _$PreviewUser;

  int get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewUserCopyWith<PreviewUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
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
    return identical(this, other) || (other is Loading);
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
abstract class $ReportedUserCopyWith<$Res> {
  factory $ReportedUserCopyWith(
          ReportedUser value, $Res Function(ReportedUser) then) =
      _$ReportedUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportedUserCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ReportedUserCopyWith<$Res> {
  _$ReportedUserCopyWithImpl(
      ReportedUser _value, $Res Function(ReportedUser) _then)
      : super(_value, (v) => _then(v as ReportedUser));

  @override
  ReportedUser get _value => super._value as ReportedUser;
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
    return identical(this, other) || (other is ReportedUser);
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
