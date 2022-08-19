// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  ChatError error(Object error) {
    return ChatError(
      error,
    );
  }

  ConnectWithProfile connectWithProfile({required String userId}) {
    return ConnectWithProfile(
      userId: userId,
    );
  }

  ChatWithProfile onProfileClicked({required String userId}) {
    return ChatWithProfile(
      userId: userId,
    );
  }

  Unmatch unmatch(Channel channel) {
    return Unmatch(
      channel,
    );
  }

  ReportProfile reportProfile(Channel channel) {
    return ReportProfile(
      channel,
    );
  }

  PreviewUserCard previewUserCard(Channel channel) {
    return PreviewUserCard(
      channel,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

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
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
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
    return identical(this, other) || (other is Initialize);
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
abstract class $ChatErrorCopyWith<$Res> {
  factory $ChatErrorCopyWith(ChatError value, $Res Function(ChatError) then) =
      _$ChatErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ChatErrorCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $ChatErrorCopyWith<$Res> {
  _$ChatErrorCopyWithImpl(ChatError _value, $Res Function(ChatError) _then)
      : super(_value, (v) => _then(v as ChatError));

  @override
  ChatError get _value => super._value as ChatError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ChatError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
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
        (other is ChatError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ChatErrorCopyWith<ChatError> get copyWith =>
      _$ChatErrorCopyWithImpl<ChatError>(this, _$identity);

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
  const factory ChatError(Object error) = _$ChatError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatErrorCopyWith<ChatError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectWithProfileCopyWith<$Res> {
  factory $ConnectWithProfileCopyWith(
          ConnectWithProfile value, $Res Function(ConnectWithProfile) then) =
      _$ConnectWithProfileCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$ConnectWithProfileCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $ConnectWithProfileCopyWith<$Res> {
  _$ConnectWithProfileCopyWithImpl(
      ConnectWithProfile _value, $Res Function(ConnectWithProfile) _then)
      : super(_value, (v) => _then(v as ConnectWithProfile));

  @override
  ConnectWithProfile get _value => super._value as ConnectWithProfile;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(ConnectWithProfile(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@Implements(ChatEventStartConversation)

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
        (other is ConnectWithProfile &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $ConnectWithProfileCopyWith<ConnectWithProfile> get copyWith =>
      _$ConnectWithProfileCopyWithImpl<ConnectWithProfile>(this, _$identity);

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

abstract class ConnectWithProfile
    implements ChatEvent, ChatEventStartConversation {
  const factory ConnectWithProfile({required String userId}) =
      _$ConnectWithProfile;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectWithProfileCopyWith<ConnectWithProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWithProfileCopyWith<$Res> {
  factory $ChatWithProfileCopyWith(
          ChatWithProfile value, $Res Function(ChatWithProfile) then) =
      _$ChatWithProfileCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$ChatWithProfileCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $ChatWithProfileCopyWith<$Res> {
  _$ChatWithProfileCopyWithImpl(
      ChatWithProfile _value, $Res Function(ChatWithProfile) _then)
      : super(_value, (v) => _then(v as ChatWithProfile));

  @override
  ChatWithProfile get _value => super._value as ChatWithProfile;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(ChatWithProfile(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@Implements(ChatEventStartConversation)

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
        (other is ChatWithProfile &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $ChatWithProfileCopyWith<ChatWithProfile> get copyWith =>
      _$ChatWithProfileCopyWithImpl<ChatWithProfile>(this, _$identity);

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

abstract class ChatWithProfile
    implements ChatEvent, ChatEventStartConversation {
  const factory ChatWithProfile({required String userId}) = _$ChatWithProfile;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatWithProfileCopyWith<ChatWithProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnmatchCopyWith<$Res> {
  factory $UnmatchCopyWith(Unmatch value, $Res Function(Unmatch) then) =
      _$UnmatchCopyWithImpl<$Res>;
  $Res call({Channel channel});
}

/// @nodoc
class _$UnmatchCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $UnmatchCopyWith<$Res> {
  _$UnmatchCopyWithImpl(Unmatch _value, $Res Function(Unmatch) _then)
      : super(_value, (v) => _then(v as Unmatch));

  @override
  Unmatch get _value => super._value as Unmatch;

  @override
  $Res call({
    Object? channel = freezed,
  }) {
    return _then(Unmatch(
      channel == freezed
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
        (other is Unmatch &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality().equals(other.channel, channel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(channel);

  @JsonKey(ignore: true)
  @override
  $UnmatchCopyWith<Unmatch> get copyWith =>
      _$UnmatchCopyWithImpl<Unmatch>(this, _$identity);

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
  const factory Unmatch(Channel channel) = _$Unmatch;

  Channel get channel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnmatchCopyWith<Unmatch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportProfileCopyWith<$Res> {
  factory $ReportProfileCopyWith(
          ReportProfile value, $Res Function(ReportProfile) then) =
      _$ReportProfileCopyWithImpl<$Res>;
  $Res call({Channel channel});
}

/// @nodoc
class _$ReportProfileCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $ReportProfileCopyWith<$Res> {
  _$ReportProfileCopyWithImpl(
      ReportProfile _value, $Res Function(ReportProfile) _then)
      : super(_value, (v) => _then(v as ReportProfile));

  @override
  ReportProfile get _value => super._value as ReportProfile;

  @override
  $Res call({
    Object? channel = freezed,
  }) {
    return _then(ReportProfile(
      channel == freezed
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
        (other is ReportProfile &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality().equals(other.channel, channel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(channel);

  @JsonKey(ignore: true)
  @override
  $ReportProfileCopyWith<ReportProfile> get copyWith =>
      _$ReportProfileCopyWithImpl<ReportProfile>(this, _$identity);

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
  const factory ReportProfile(Channel channel) = _$ReportProfile;

  Channel get channel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportProfileCopyWith<ReportProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewUserCardCopyWith<$Res> {
  factory $PreviewUserCardCopyWith(
          PreviewUserCard value, $Res Function(PreviewUserCard) then) =
      _$PreviewUserCardCopyWithImpl<$Res>;
  $Res call({Channel channel});
}

/// @nodoc
class _$PreviewUserCardCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $PreviewUserCardCopyWith<$Res> {
  _$PreviewUserCardCopyWithImpl(
      PreviewUserCard _value, $Res Function(PreviewUserCard) _then)
      : super(_value, (v) => _then(v as PreviewUserCard));

  @override
  PreviewUserCard get _value => super._value as PreviewUserCard;

  @override
  $Res call({
    Object? channel = freezed,
  }) {
    return _then(PreviewUserCard(
      channel == freezed
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
        (other is PreviewUserCard &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality().equals(other.channel, channel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(channel);

  @JsonKey(ignore: true)
  @override
  $PreviewUserCardCopyWith<PreviewUserCard> get copyWith =>
      _$PreviewUserCardCopyWithImpl<PreviewUserCard>(this, _$identity);

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
  const factory PreviewUserCard(Channel channel) = _$PreviewUserCard;

  Channel get channel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewUserCardCopyWith<PreviewUserCard> get copyWith =>
      throw _privateConstructorUsedError;
}
