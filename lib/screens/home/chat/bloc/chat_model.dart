import 'package:collection/collection.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/model/profile/report_profile_request.dart';
import 'package:twelv/model/profile/unmatch_with_profile_request.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/user/matched_profile.dart';
import 'package:twelv/model/user/matched_profiles.dart';
import 'package:twelv/screens/home/chat/models/channels_settings.dart';
import 'package:twelv/screens/home/chat/models/created_channel.dart';
import 'package:twelv/services/e2ee/e2ee_service.dart';
import 'package:twelv/services/network/users_client.dart';

class ChatModel {
  final StreamChatClient _client;
  final CurrentUserRepository _currentUserRepository;
  final UsersRestClient _usersRestClient;
  final E2eeService _e2eeService;

  ChatModel(this._client, this._currentUserRepository, this._usersRestClient, this._e2eeService);

  // region public API

  Future<void> impersonateAsACurrentUser() async {
    assert(_currentUserRepository.currentUser != null, 'CurrentUser must be set');
    assert(_currentUserRepository.currentUser?.getStreamUUID?.isNotEmpty == true,
        'CurrentUser must have UID');
    assert(_currentUserRepository.currentUser?.getStreamAPIToken?.isNotEmpty == true,
        'CurrentUser must have token');
    assert(_currentUserRepository.currentUser?.virgilApiToken?.isNotEmpty == true,
        'CurrentUser must have access token to E2EE system');

    final CurrentUser currentUser = _currentUserRepository.currentUser!;

    if (currentUser.getStreamUUID! == _client.state.currentUser?.id) return Future<void>.value();

    await _client.connectUser(
        User(id: currentUser.getStreamUUID!, extraData: <String, dynamic>{
          "image": currentUser.avatar?.url,
          "name": currentUser.name
        }),
        currentUser.getStreamAPIToken!);

    final String? token = _currentUserRepository.currentUser?.notificationToken;
    if (token != null &&
        _currentUserRepository.currentUser?.notificationSettings?.messages == true) {
      final ListDevicesResponse responseDevices = await _client.getDevices();
      if (responseDevices.devices.where((Device d) => d.id == token).isEmpty) {
        await _client.addDevice(token, PushProvider.firebase);
      }
    }

    await _e2eeService.generatePrivateKeyForCurrentUser(
        uuid: currentUser.getStreamUUID!, e2eeToken: currentUser.virgilApiToken!);
  }

  Future<void> logout() async {
    if (_currentUserRepository.currentUser?.notificationToken != null) {
      final ListDevicesResponse responseDevices = await _client.getDevices();
      for (final Device device in responseDevices.devices) {
        await _client.removeDevice(device.id);
      }
    }
    await Future.wait(<Future<dynamic>>[
      _client.disconnectUser(flushChatPersistence: true),
      _e2eeService.disconnect()
    ]);
  }

  Future<CreatedChannel> connectWithUser({required String id}) async {
    final Channel channel = _client.channel("messaging", extraData: <String, Object?>{
      "members": <String>[_client.state.currentUser!.id, id],
    });
    final ChannelState watch = await channel.watch();
    return CreatedChannel(channel: channel, channelState: watch);
  }

  ChannelsSettings createChannelsSettings() => ChannelsSettings(
      filter: Filter.and(<Filter>[
        Filter.equal('type', 'messaging'),
        Filter.in_('members', <String>[_client.state.currentUser!.id])
      ]),
      sortOptions: <SortOption<ChannelModel>>[const SortOption<ChannelModel>('last_message_at')]);

  Future<MatchedProfiles> getMatchedProfilesAndSyncWithChat() async {
    final MatchedProfiles matchedProfiles = await _usersRestClient.getMatches();
    await for (final List<Channel> channels
        in _client.queryChannels(filter: createChannelsSettings().filter)) {
      final List<Channel> obsoleteChannels = await _findObsoleteChannels(matchedProfiles, channels);
      for (final Channel channel in obsoleteChannels) {
        await channel.removeOrLeaveIfPossible();
      }
    }
    return matchedProfiles;
  }

  Future<MatchedProfiles> unmatchWithMemberOf({required Channel channel}) async {
    final int? userIdToBeUnmatchedWith =
        await _findMyInterlocutorBackendUserIdFrom(channel: channel);
    if (userIdToBeUnmatchedWith != null) {
      await _usersRestClient
          .unmatchWithProfile(UnmatchWithProfileRequest(userId: userIdToBeUnmatchedWith));
    }
    return getMatchedProfilesAndSyncWithChat();
  }

  Future<int?> previewMemberOf({required Channel channel}) =>
      _findMyInterlocutorBackendUserIdFrom(channel: channel);

  Future<MatchedProfiles> reportMemberOf({required Channel channel}) async {
    final int? userIdToBeReported = await _findMyInterlocutorBackendUserIdFrom(channel: channel);
    if (userIdToBeReported != null) {
      await _usersRestClient.reportProfile(ReportProfileRequest(userId: userIdToBeReported));
    }
    return getMatchedProfilesAndSyncWithChat();
  }

  // endregion

  // region E2EE delegation

  Future<String> encrypt({required String message, required Channel sentInChannel}) async =>
      _e2eeService.encrypt(message: message, membersUuids: await sentInChannel.membersUuids);

  Future<String> decrypt({required String encryptedMessage, String? senderUuid}) =>
      _e2eeService.decrypt(encryptedMessage: encryptedMessage, senderUuid: senderUuid);

  // endregion

  // region utils

  Future<List<Channel>> _findObsoleteChannels(
      MatchedProfiles matchedProfiles, List<Channel> channels) async {
    if (matchedProfiles.data.isEmpty) return channels;

    final List<Channel> obsoleteChannels = List<Channel>.empty(growable: true);
    for (final Channel channel in channels) {
      final QueryMembersResponse membersWithoutMe = await channel.membersWithoutMe;
      final bool isMemberPresentInMatches = membersWithoutMe.members
          .where((Member m) =>
              matchedProfiles.data
                  .firstWhereOrNull((MatchedProfile p) => p.getStreamUUID == m.userId) !=
              null)
          .isNotEmpty;
      if (!isMemberPresentInMatches) {
        obsoleteChannels.add(channel);
      }
    }

    return obsoleteChannels;
  }

  Future<int?> _findMyInterlocutorBackendUserIdFrom({required Channel channel}) async {
    final List<Member> membersWithoutMe = (await channel.membersWithoutMe).members;
    final List<MatchedProfile> matchedProfiles = (await _usersRestClient.getMatches()).data;
    return matchedProfiles
        .firstWhereOrNull((MatchedProfile p) =>
            membersWithoutMe.firstWhereOrNull((Member m) => m.userId == p.getStreamUUID) != null)
        ?.id;
  }
}

extension _ChatChannelExt on Channel {
  Future<QueryMembersResponse> get membersWithoutMe =>
      queryMembers(filter: Filter.notEqual('id', client.state.currentUser!.id));

  Future<List<String>> get membersUuids async =>
      (await queryMembers()).members.map((Member member) => member.userId).withNullifyer.toList();

  Future<void> removeOrLeaveIfPossible() async {
    try {
      await delete();
    } on StreamChatNetworkError catch (e) {
      logger().e('Cannot delete channel $this', e);
      await removeMembers(<String>[client.state.currentUser!.id]);
    }
  }
}
