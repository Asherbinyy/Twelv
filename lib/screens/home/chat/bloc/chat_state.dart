import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/matched_profile.dart';
import 'package:twelv/screens/home/chat/models/created_channel.dart';

part 'chat_state.freezed.dart';

@freezed
@immutable
class ChatState with _$ChatState {
  const factory ChatState.data({required List<MatchedProfile> matches}) = ChatData;

  const factory ChatState.newChannel(CreatedChannel newChannel) = NewChannel;

  const factory ChatState.error(Object error) = Error;

  const factory ChatState.previewUser({required int userId}) = PreviewUser;

  const factory ChatState.loading() = Loading;

  const factory ChatState.reportedUser() = ReportedUser;
}

class ChatNotFoundChannelPerson {}
