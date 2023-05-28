import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CreatedChannel {
  final Channel channel;
  final ChannelState channelState;

  CreatedChannel({required this.channel, required this.channelState});

  bool containsUserAsMember({required String uid}) =>
      channelState.members!.where((Member member) => member.userId == uid).isNotEmpty;
}
