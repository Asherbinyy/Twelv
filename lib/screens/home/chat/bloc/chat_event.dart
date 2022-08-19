import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

part 'chat_event.freezed.dart';

abstract class ChatEventStartConversation {
  String get userId;
}

@freezed
@immutable
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.initialize() = Initialize;

  const factory ChatEvent.error(Object error) = ChatError;

  @Implements(ChatEventStartConversation)
  const factory ChatEvent.connectWithProfile({required String userId}) = ConnectWithProfile;

  @Implements(ChatEventStartConversation)
  const factory ChatEvent.onProfileClicked({required String userId}) = ChatWithProfile;

  const factory ChatEvent.unmatch(Channel channel) = Unmatch;

  const factory ChatEvent.reportProfile(Channel channel) = ReportProfile;

  const factory ChatEvent.previewUserCard(Channel channel) = PreviewUserCard;
}
