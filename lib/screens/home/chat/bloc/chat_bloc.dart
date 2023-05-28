import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/blocs/auth/authorization/authorization_bloc.dart';
import 'package:twelv/blocs/auth/authorization/authorization_state.dart';
import 'package:twelv/model/user/matched_profile.dart';
import 'package:twelv/model/user/matched_profiles.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_state.dart' as explorer;
import 'package:twelv/screens/home/chat/bloc/chat_event.dart';
import 'package:twelv/screens/home/chat/bloc/chat_model.dart';
import 'package:twelv/screens/home/chat/bloc/chat_state.dart';
import 'package:twelv/screens/home/chat/models/channels_settings.dart';
import 'package:twelv/screens/home/chat/models/created_channel.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_state.dart' as likes;

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatModel _chatModel;
  StreamSubscription<explorer.ExplorerState>? _explorerSub;
  StreamSubscription<likes.LikesState>? _likesSub;


  final StreamSubscription<AuthorizationState> _authSub;

  ChatBloc(this._chatModel, AuthorizationBloc authenticationBloc)
      : _authSub = authenticationBloc.stream
            .where((AuthorizationState state) => state is Unauthorized)
            .listen((_) {
          _chatModel.logout();
        }),
        super(const ChatState.data(matches: <MatchedProfile>[]));

  late ExplorerBloc explorerBloc;
  late LikesBloc likesBloc;


  ChannelsSettings get settings => _chatModel.createChannelsSettings();

  @override
  Stream<ChatState> mapEventToState(ChatEvent event) async* {
    try {
      if (event is Initialize) {
        await _chatModel.impersonateAsACurrentUser();
        _startObservingOtherBlocsState();
        final MatchedProfiles matchedProfiles =
            await _chatModel.getMatchedProfilesAndSyncWithChat();
        yield ChatState.data(matches: matchedProfiles.data);
      } else if (event is ChatEventStartConversation) {
        final CreatedChannel channel =
            await _chatModel.connectWithUser(id: (event as ChatEventStartConversation).userId);
        yield ChatState.newChannel(channel);
      } else if (event is ChatError) {
        yield ChatState.error(event.error);
      } else if (event is Unmatch) {
        final MatchedProfiles matchedProfilesAfterUnmatch =
            await _chatModel.unmatchWithMemberOf(channel: event.channel);
        yield ChatState.data(matches: matchedProfilesAfterUnmatch.data);
      } else if (event is ReportProfile) {
        final MatchedProfiles matchedProfilesAfterReport =
            await _chatModel.reportMemberOf(channel: event.channel);
        yield const ChatState.reportedUser();
        yield ChatState.data(matches: matchedProfilesAfterReport.data);
      } else if (event is PreviewUserCard) {
        yield const ChatState.loading();
        final int? userId = await _chatModel.previewMemberOf(channel: event.channel);
        if (userId != null) {
          yield ChatState.previewUser(userId: userId);
        } else {
          yield ChatState.error(ChatNotFoundChannelPerson());
        }
      }
    } on Exception catch (e) {
      yield ChatState.error(e);
    }
  }

  // region E2EE delegation

  Future<String> encrypt({required String message, required Channel sentInChannel}) =>
      _chatModel.encrypt(message: message, sentInChannel: sentInChannel);

  Future<String> decrypt({required String encryptedMessage, String? senderUuid}) =>
      _chatModel.decrypt(encryptedMessage: encryptedMessage, senderUuid: senderUuid);

  // endregion

  void _startObservingOtherBlocsState() {
    _explorerSub = explorerBloc.stream
        .where((explorer.ExplorerState state) => state is explorer.Match)
        .listen((explorer.ExplorerState match) => add(ChatEvent.connectWithProfile(
            userId: (match as explorer.Match).swipeMatch.matchedGetStreamUUID)));

    _likesSub = likesBloc.stream.where((likes.LikesState state) => state is likes.Match).listen(
        (likes.LikesState match) => add(ChatEvent.connectWithProfile(
            userId: (match as likes.Match).swipeMatch.matchedGetStreamUUID)));
  }

  @override
  Future<void> close() {
    _explorerSub?.cancel();
    _likesSub?.cancel();
    _authSub.cancel();
    return super.close();
  }
}
