// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$Initialize>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'ChatEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements ChatEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$ChatErrorCopyWith<$Res> {
  factory _$$ChatErrorCopyWith(
          _$ChatError value, $Res Function(_$ChatError) then) =
      __$$ChatErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ChatErrorCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatError>
    implements _$$ChatErrorCopyWith<$Res> {
  __$$ChatErrorCopyWithImpl(
      _$ChatError _value, $Res Function(_$ChatError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatError(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ChatError implements ChatError {
  const _$ChatError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'ChatEvent.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatErrorCopyWith<_$ChatError> get copyWith =>
      __$$ChatErrorCopyWithImpl<_$ChatError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
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
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatError implements ChatEvent {
  const factory ChatError(final Object error) = _$ChatError;

  Object get error;
  @JsonKey(ignore: true)
  _$$ChatErrorCopyWith<_$ChatError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectWithProfileCopyWith<$Res> {
  factory _$$ConnectWithProfileCopyWith(_$ConnectWithProfile value,
          $Res Function(_$ConnectWithProfile) then) =
      __$$ConnectWithProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$ConnectWithProfileCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ConnectWithProfile>
    implements _$$ConnectWithProfileCopyWith<$Res> {
  __$$ConnectWithProfileCopyWithImpl(
      _$ConnectWithProfile _value, $Res Function(_$ConnectWithProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ConnectWithProfile(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectWithProfile implements ConnectWithProfile {
  const _$ConnectWithProfile({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ChatEvent.connectWithProfile(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectWithProfile &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectWithProfileCopyWith<_$ConnectWithProfile> get copyWith =>
      __$$ConnectWithProfileCopyWithImpl<_$ConnectWithProfile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) {
    return connectWithProfile(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) {
    return connectWithProfile?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
    required TResult orElse(),
  }) {
    if (connectWithProfile != null) {
      return connectWithProfile(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) {
    return connectWithProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) {
    return connectWithProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) {
    if (connectWithProfile != null) {
      return connectWithProfile(this);
    }
    return orElse();
  }
}

abstract class ConnectWithProfile implements ChatEvent {
  const factory ConnectWithProfile({required final String userId}) =
      _$ConnectWithProfile;

  String get userId;
  @JsonKey(ignore: true)
  _$$ConnectWithProfileCopyWith<_$ConnectWithProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatWithProfileCopyWith<$Res> {
  factory _$$ChatWithProfileCopyWith(
          _$ChatWithProfile value, $Res Function(_$ChatWithProfile) then) =
      __$$ChatWithProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$ChatWithProfileCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatWithProfile>
    implements _$$ChatWithProfileCopyWith<$Res> {
  __$$ChatWithProfileCopyWithImpl(
      _$ChatWithProfile _value, $Res Function(_$ChatWithProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ChatWithProfile(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatWithProfile implements ChatWithProfile {
  const _$ChatWithProfile({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ChatEvent.onProfileClicked(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatWithProfile &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatWithProfileCopyWith<_$ChatWithProfile> get copyWith =>
      __$$ChatWithProfileCopyWithImpl<_$ChatWithProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) {
    return onProfileClicked(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) {
    return onProfileClicked?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
    required TResult orElse(),
  }) {
    if (onProfileClicked != null) {
      return onProfileClicked(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) {
    return onProfileClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) {
    return onProfileClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) {
    if (onProfileClicked != null) {
      return onProfileClicked(this);
    }
    return orElse();
  }
}

abstract class ChatWithProfile implements ChatEvent{
  const factory ChatWithProfile({required final String userId}) =
      _$ChatWithProfile;

  String get userId;
  @JsonKey(ignore: true)
  _$$ChatWithProfileCopyWith<_$ChatWithProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnmatchCopyWith<$Res> {
  factory _$$UnmatchCopyWith(_$Unmatch value, $Res Function(_$Unmatch) then) =
      __$$UnmatchCopyWithImpl<$Res>;
  @useResult
  $Res call({Channel channel});
}

/// @nodoc
class __$$UnmatchCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$Unmatch>
    implements _$$UnmatchCopyWith<$Res> {
  __$$UnmatchCopyWithImpl(_$Unmatch _value, $Res Function(_$Unmatch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
  }) {
    return _then(_$Unmatch(
      null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
    ));
  }
}

/// @nodoc

class _$Unmatch implements Unmatch {
  const _$Unmatch(this.channel);

  @override
  final Channel channel;

  @override
  String toString() {
    return 'ChatEvent.unmatch(channel: $channel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unmatch &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnmatchCopyWith<_$Unmatch> get copyWith =>
      __$$UnmatchCopyWithImpl<_$Unmatch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) {
    return unmatch(channel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) {
    return unmatch?.call(channel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
    required TResult orElse(),
  }) {
    if (unmatch != null) {
      return unmatch(channel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) {
    return unmatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) {
    return unmatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) {
    if (unmatch != null) {
      return unmatch(this);
    }
    return orElse();
  }
}

abstract class Unmatch implements ChatEvent {
  const factory Unmatch(final Channel channel) = _$Unmatch;

  Channel get channel;
  @JsonKey(ignore: true)
  _$$UnmatchCopyWith<_$Unmatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportProfileCopyWith<$Res> {
  factory _$$ReportProfileCopyWith(
          _$ReportProfile value, $Res Function(_$ReportProfile) then) =
      __$$ReportProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({Channel channel});
}

/// @nodoc
class __$$ReportProfileCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReportProfile>
    implements _$$ReportProfileCopyWith<$Res> {
  __$$ReportProfileCopyWithImpl(
      _$ReportProfile _value, $Res Function(_$ReportProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
  }) {
    return _then(_$ReportProfile(
      null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
    ));
  }
}

/// @nodoc

class _$ReportProfile implements ReportProfile {
  const _$ReportProfile(this.channel);

  @override
  final Channel channel;

  @override
  String toString() {
    return 'ChatEvent.reportProfile(channel: $channel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportProfile &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportProfileCopyWith<_$ReportProfile> get copyWith =>
      __$$ReportProfileCopyWithImpl<_$ReportProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) {
    return reportProfile(channel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) {
    return reportProfile?.call(channel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
    required TResult orElse(),
  }) {
    if (reportProfile != null) {
      return reportProfile(channel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) {
    return reportProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) {
    return reportProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) {
    if (reportProfile != null) {
      return reportProfile(this);
    }
    return orElse();
  }
}

abstract class ReportProfile implements ChatEvent {
  const factory ReportProfile(final Channel channel) = _$ReportProfile;

  Channel get channel;
  @JsonKey(ignore: true)
  _$$ReportProfileCopyWith<_$ReportProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewUserCardCopyWith<$Res> {
  factory _$$PreviewUserCardCopyWith(
          _$PreviewUserCard value, $Res Function(_$PreviewUserCard) then) =
      __$$PreviewUserCardCopyWithImpl<$Res>;
  @useResult
  $Res call({Channel channel});
}

/// @nodoc
class __$$PreviewUserCardCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$PreviewUserCard>
    implements _$$PreviewUserCardCopyWith<$Res> {
  __$$PreviewUserCardCopyWithImpl(
      _$PreviewUserCard _value, $Res Function(_$PreviewUserCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
  }) {
    return _then(_$PreviewUserCard(
      null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
    ));
  }
}

/// @nodoc

class _$PreviewUserCard implements PreviewUserCard {
  const _$PreviewUserCard(this.channel);

  @override
  final Channel channel;

  @override
  String toString() {
    return 'ChatEvent.previewUserCard(channel: $channel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewUserCard &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewUserCardCopyWith<_$PreviewUserCard> get copyWith =>
      __$$PreviewUserCardCopyWithImpl<_$PreviewUserCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Object error) error,
    required TResult Function(String userId) connectWithProfile,
    required TResult Function(String userId) onProfileClicked,
    required TResult Function(Channel channel) unmatch,
    required TResult Function(Channel channel) reportProfile,
    required TResult Function(Channel channel) previewUserCard,
  }) {
    return previewUserCard(channel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(Object error)? error,
    TResult? Function(String userId)? connectWithProfile,
    TResult? Function(String userId)? onProfileClicked,
    TResult? Function(Channel channel)? unmatch,
    TResult? Function(Channel channel)? reportProfile,
    TResult? Function(Channel channel)? previewUserCard,
  }) {
    return previewUserCard?.call(channel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Object error)? error,
    TResult Function(String userId)? connectWithProfile,
    TResult Function(String userId)? onProfileClicked,
    TResult Function(Channel channel)? unmatch,
    TResult Function(Channel channel)? reportProfile,
    TResult Function(Channel channel)? previewUserCard,
    required TResult orElse(),
  }) {
    if (previewUserCard != null) {
      return previewUserCard(channel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ChatError value) error,
    required TResult Function(ConnectWithProfile value) connectWithProfile,
    required TResult Function(ChatWithProfile value) onProfileClicked,
    required TResult Function(Unmatch value) unmatch,
    required TResult Function(ReportProfile value) reportProfile,
    required TResult Function(PreviewUserCard value) previewUserCard,
  }) {
    return previewUserCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ChatError value)? error,
    TResult? Function(ConnectWithProfile value)? connectWithProfile,
    TResult? Function(ChatWithProfile value)? onProfileClicked,
    TResult? Function(Unmatch value)? unmatch,
    TResult? Function(ReportProfile value)? reportProfile,
    TResult? Function(PreviewUserCard value)? previewUserCard,
  }) {
    return previewUserCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ChatError value)? error,
    TResult Function(ConnectWithProfile value)? connectWithProfile,
    TResult Function(ChatWithProfile value)? onProfileClicked,
    TResult Function(Unmatch value)? unmatch,
    TResult Function(ReportProfile value)? reportProfile,
    TResult Function(PreviewUserCard value)? previewUserCard,
    required TResult orElse(),
  }) {
    if (previewUserCard != null) {
      return previewUserCard(this);
    }
    return orElse();
  }
}

abstract class PreviewUserCard implements ChatEvent {
  const factory PreviewUserCard(final Channel channel) = _$PreviewUserCard;

  Channel get channel;
  @JsonKey(ignore: true)
  _$$PreviewUserCardCopyWith<_$PreviewUserCard> get copyWith =>
      throw _privateConstructorUsedError;
}
