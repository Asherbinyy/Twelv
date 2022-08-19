// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_root_media_query_repository.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/matched_profile.dart';
import 'package:twelv/screens/home/chat/components/chat_channels_list.dart';
import 'package:twelv/screens/home/chat/components/chat_matches_list.dart';
import 'package:twelv/screens/home/chat/models/channels_settings.dart';

class ChatView extends StatelessWidget {
  final ChannelsSettings settings;
  final List<MatchedProfile> matches;

  const ChatView({required this.settings, required this.matches, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: context.theme.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                  15, AppRootMediaQueryRepository.of(context).mediaQueryData.padding.top, 15, 20),
              child: AppText(Str.of(context).chatMyMatchesTitle),
            ),
            ChatMatchesList(matches),
            const SizedBox(height: 15),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: AppText(Str.of(context).chatMyConversationsTitle),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ChatChannelsList(settings: settings),
            ))
          ],
        ),
      );
}
