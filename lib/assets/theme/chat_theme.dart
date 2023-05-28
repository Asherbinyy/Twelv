// ignore_for_file: no-equal-arguments, no-magic-number
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';

const double _avatarSize = 60;

StreamChatThemeData createChatTheme(BuildContext context) {
  final ThemeData fromTheme = context.theme;
  final StreamChatThemeData theme = StreamChatThemeData.fromTheme(fromTheme);
  return theme.copyWith(
    channelPreviewTheme: theme.channelPreviewTheme.copyWith(
      avatarTheme: StreamAvatarThemeData(
        constraints: const BoxConstraints.expand(width: _avatarSize, height: _avatarSize),
        borderRadius: BorderRadius.circular(_avatarSize),
      ),
      titleStyle: appTheme.textTheme.headline4!.copyWith(
        fontSize: 18,
        color: appTheme.textDarkColor,
        fontFamily: appTheme.platformFont,
      ),
      subtitleStyle: appTheme.textTheme.bodyText2,
    ),
    ownMessageTheme: theme.ownMessageTheme.copyWith(
      messageTextStyle:
          appTheme.textTheme.bodyText1!.copyWith(fontSize: 15, color: appTheme.accentColor),
      messageBackgroundColor: appTheme.accentPrimaryLight,
      reactionsBackgroundColor: Colors.white,
      createdAtStyle:
          appTheme.textTheme.bodyText2!.copyWith(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    otherMessageTheme: theme.otherMessageTheme.copyWith(
      messageTextStyle:
          appTheme.textTheme.bodyText1!.copyWith(fontSize: 15, color: const Color(0xfff25836)),
      messageBackgroundColor: const Color(0xfffcefe8),
      reactionsBackgroundColor: Colors.white,
      messageAuthorStyle:
          appTheme.textTheme.bodyText2!.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
      createdAtStyle:
          appTheme.textTheme.bodyText2!.copyWith(fontSize: 12, fontWeight: FontWeight.normal),
    ),
    messageInputTheme: theme.messageInputTheme.copyWith(
        inputBackgroundColor: Colors.white,
        actionButtonColor: appTheme.accentColor,
        actionButtonIdleColor: appTheme.accentColor,
        sendButtonColor: appTheme.accentColor,
        sendButtonIdleColor: appTheme.accentColor,
        inputDecoration: InputDecoration(
            hintText: Str.of(context).chatConversationInputMessagePlaceholder,
            border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(17))))),
    textTheme: theme.textTheme.copyWith(
      footnote: appTheme.textTheme.headline5!.copyWith(color: Colors.white, height: 2),
    ),
    colorTheme: theme.colorTheme.copyWith(
      overlayDark: appTheme.accentColor,
      textHighEmphasis: appTheme.accentColor,
    ),
  );
}

Future<void> chatBackgroundEvent(Event e, StreamChatClient client) async {
  final String? currentUserId = client.state.currentUser?.id;
  assert(currentUserId != null);

  if (!<String>[
        EventType.messageNew,
        EventType.notificationMessageNew,
      ].contains(e.type) ||
      e.user?.id == currentUserId) {
    return;
  }
  if (e.message == null || e.message?.user?.name == null) {
    logger().e("Background message missing content", e.message);
    return;
  }
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('launch_background');
  final IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings();
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  await flutterLocalNotificationsPlugin.show(
    e.message!.id.hashCode,
    e.message!.user?.name,
    e.message!.text,
    null,
  );
}
