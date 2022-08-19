import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
import 'package:twelv/screens/home/chat/bloc/chat_event.dart';
import 'package:twelv/screens/home/chat/components/chat_decrypted_channel_preview.dart';
import 'package:twelv/screens/home/chat/models/channels_settings.dart';
import 'package:twelv/services/navigation/navigation.dart';

class ChatChannelsList extends StatelessWidget {
  final ChannelsSettings settings;

  const ChatChannelsList({required this.settings, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: Jiffy.locale(Localizations.localeOf(context).languageCode),
        builder: (_, AsyncSnapshot<void> snapshot) {
          return snapshot.connectionState != ConnectionState.done
              ? Container()
              : ChannelsBloc(
                  child: ChannelListView(
                    filter: settings.filter,
                    sort: settings.sortOptions,
                    pagination: const PaginationParams(
                      limit: 30,
                    ),
                    errorBuilder: (BuildContext context, Object error) {
                      logger().e("Cannot load list of chats because of error", error);
                      context.read<ChatBloc>().add(ChatEvent.error(error));
                      return Container();
                    },
                    emptyBuilder: (BuildContext context) => Center(
                      child: AppText(
                        Str.of(context).chatNoOngoingConversationsMessage,
                        align: TextAlign.center,
                      ),
                    ),
                    onChannelTap: (Channel channel, _) {
                      navigator(NavigationService.home)
                          .navigateTo(HomeRoutes.chatChannel, args: channel);
                    },
                    channelPreviewBuilder: (BuildContext context, Channel channel) => DecoratedBox(
                      decoration: BoxDecoration(
                        color: StreamChatTheme.of(context).channelListViewTheme.backgroundColor,
                      ),
                      child: ChatDecryptedChannelPreview(
                        channel: channel,
                        onTap: (Channel channel) => navigator(NavigationService.home)
                            .navigateTo(HomeRoutes.chatChannel, args: channel),
                      ),
                    ),
                    separatorBuilder: (_, __) => const SizedBox(height: 12.5),
                  ),
                );
        });
  }
}
