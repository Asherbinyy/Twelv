// ignore_for_file: no-magic-number, long-method
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/dialog/info_dialog_view.dart' as common;
import 'package:twelv/common/components/dialog/options_dialog_view.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
import 'package:twelv/screens/home/chat/bloc/chat_event.dart';
import 'package:twelv/screens/home/chat/bloc/chat_state.dart';
import 'package:twelv/screens/home/chat/components/chat_date_divider.dart';

class ChatChannelView extends StatefulWidget {
  final Channel channel;

  const ChatChannelView({
    required this.channel,
    Key? key,
  }) : super(key: key);

  @override
  _ChatChannelViewState createState() => _ChatChannelViewState();
}

class _ChatChannelViewState extends State<ChatChannelView> {
  bool showChannelActions = false;

  @override
  void initState() {
    showChannelActions = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatBloc, ChatState>(
      listener: (BuildContext context, ChatState state) {
        if (state is ReportedUser) {
          common.showInfoDialog(
            context,
            "",
            Str.of(context).profileCardProfileReportedSuccessTitle,
            okPressed: () => Navigator.of(context).pop(),
          );
        }
        manageLoadingView(context, show: state is Loading);
      },
      child: StreamChannel(
        channel: widget.channel,
        child: Scaffold(
          appBar: _createAppBar(context),
          body: GestureDetector(
            onTap: () {
              if (showChannelActions) {
                setState(() {
                  showChannelActions = false;
                });
              }
            },
            child: Column(
              children: <Widget>[
                const Divider(height: 1),
                Expanded(
                  child: Stack(children: <Widget>[
                    Image(
                      image: context.theme.conversationBackgroundImage,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity, // ignore: no-equal-arguments
                    ),
                    MessageListView(
                      showFloatingDateDivider: false,
                      dateDividerBuilder: (DateTime dateTime) =>
                          ChatDateDivider(dateTime: dateTime),
                      emptyBuilder: (BuildContext context) => Center(
                        child: AppText(
                          Str.of(context).chatNoMessagesYetTitle,
                          type: AppTextType.title3,
                          align: TextAlign.center,
                        ),
                      ),
                      messageBuilder: (BuildContext context, MessageDetails message, _,
                              MessageWidget defaultMessageWidget) =>
                          _buildMessageWidget(context, message, defaultMessageWidget),
                    ),
                    if (showChannelActions) _buildChannelActions(context),
                  ]),
                ),
                MessageInput(
                  preMessageSending: (Message message) async => message.copyWith(
                      text: await context
                          .read<ChatBloc>()
                          .encrypt(message: message.text ?? "", sentInChannel: widget.channel)),
                  showCommandsButton: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _createAppBar(BuildContext context) => AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () => context.read<ChatBloc>().add(ChatEvent.previewUserCard(widget.channel)),
          child: ChannelName(
            textStyle: context.theme.textTheme.headline2,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Image.asset(context.theme.backImage.assetName),
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            onPressed: () => setState(() {
              showChannelActions = !showChannelActions;
            }),
            icon: Image.asset(context.theme.threeDotsImage.assetName),
          ),
        ],
      );

  Widget _buildChannelActions(BuildContext context) => Material(
        color: Colors.transparent,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Material(
                elevation: 1,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                child: IntrinsicWidth(
                  stepWidth: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppButtonText(
                        Str.of(context).chatUnmatchActionTitle,
                        icon: Image.asset(context.theme.unmatchImage.assetName),
                        onPressed: () {
                          context.read<ChatBloc>().add(ChatEvent.unmatch(widget.channel));
                          Navigator.of(context).pop();
                        },
                      ),
                      const _ChatMenuDividerWidget(),
                      _ChatReportButtonWidget(
                        channel: widget.channel,
                      ),
                      const _ChatMenuDividerWidget(),
                      AppButtonText(
                        Str.of(context).chatPreviewMemberProfilButtonTitle,
                        icon: Image.asset(context.theme.chevronImage.assetName),
                        onPressed: () =>
                            context.read<ChatBloc>().add(ChatEvent.previewUserCard(widget.channel)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildMessageWidget(
    BuildContext context,
    MessageDetails message,
    MessageWidget defaultMessageWidget,
  ) =>
      FutureBuilder<String>(
        future: context
            .read<ChatBloc>()
            .decrypt(encryptedMessage: message.message.text!, senderUuid: message.message.user?.id),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) =>
            defaultMessageWidget.copyWith(
          textBuilder: (BuildContext context, Message message) {
            return snapshot.connectionState == ConnectionState.done
                ? Text(snapshot.data ?? message.text ?? "")
                : const Center(
                    child: SizedBox(
                      height: 8,
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
          },
        ),
      );
}

class _ChatReportButtonWidget extends StatelessWidget {
  final Channel channel;

  const _ChatReportButtonWidget({required this.channel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppButtonText(
        Str.of(context).chatReportProfileActionTitle,
        icon: Image.asset(context.theme.reportProfileImage.assetName),
        onPressed: () => showOptionsDialog(
          context,
          Str.of(context).profileCardReportProfileBtnTitle,
          Str.of(context).profileCardReportConfirmPopupTitle,
          <ActionDialogData>[
            ActionDialogData(Str.of(context).commonPopupOkButtonTitle, () {
              context.read<ChatBloc>().add(ChatEvent.reportProfile(channel));
            }),
            ActionDialogData(Str.of(context).commonPopupCancelButtonTitle, null),
          ],
        ),
      );
}

class _ChatMenuDividerWidget extends StatelessWidget {
  const _ChatMenuDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Divider(
        height: 1,
        color: context.theme.dividerTheme.color!.withAlpha(60),
      );
}
