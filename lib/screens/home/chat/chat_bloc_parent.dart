import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/dialog/info_dialog_view.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/matched_profile.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/explorer/components/card_single_profile_view.dart';
import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
import 'package:twelv/screens/home/chat/bloc/chat_state.dart';
import 'package:twelv/screens/home/chat/chat_view.dart';
import 'package:twelv/services/navigation/navigation.dart';

class ChatBlocParent extends StatelessWidget {
  const ChatBlocParent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      buildWhen: (_, ChatState next) => next is ChatData,
      builder: (BuildContext context, ChatState state) {
        _saveMatchesIntoWidgetCache(state, context);
        return SafeArea(
          child: ChatView(
            settings: context.read<ChatBloc>().settings,
            matches: state is ChatData ? state.matches : _readMatchesFromWidgetCache(context),
          ),
        );
      },
      listenWhen: (_, ChatState current) =>
          current is Error || current is NewChannel || current is PreviewUser,
      listener: (BuildContext context, ChatState state) {
        if (state is PreviewUser) {
          showDialog(
              context: context,
              useRootNavigator: false,
              barrierDismissible: true,
              builder: (BuildContext context) => Material(
                  type: MaterialType.transparency,
                  child: CardSingleProfileView.fromMatchUserId(context, userId: state.userId)));
        } else if (state is NewChannel) {
          navigator(NavigationService.home)
              .navigateTo(HomeRoutes.chatChannel, args: state.newChannel.channel);
        } else if (state is Error && state.error is Exception) {
          showErrorOverlay(state.error as Exception, context: context);
        } else if (state is Error && state.error is ChatNotFoundChannelPerson) {
          showErrorMessageOverlay(Str.of(context).chatNotFoundProfileError, context: context);
        } else if (state is ReportedUser) {
          showInfoDialog(context, "", Str.of(context).profileCardProfileReportedSuccessTitle);
        }
      },
    );
  }

  // region PageStorage cache management

  void _saveMatchesIntoWidgetCache(ChatState state, BuildContext context) {
    if (state is ChatData) {
      PageStorage.of(context)
          ?.writeState(context, state.matches, identifier: const ValueKey<String>("matches_cache"));
    }
  }

  List<MatchedProfile> _readMatchesFromWidgetCache(BuildContext context) {
    final dynamic cachedMatches = PageStorage.of(context)
        ?.readState(context, identifier: const ValueKey<String>("matches_cache"));
    return cachedMatches is List<MatchedProfile> ? cachedMatches : <MatchedProfile>[];
  }

// endregion
}
