// ignore_for_file: no-magic-number
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/generated/l10n.dart';

class ChatDateDivider extends StatelessWidget {
  final DateTime dateTime;

  const ChatDateDivider({
    Key? key,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StreamChatThemeData chatThemeData = StreamChatTheme.of(context);
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: BoxDecoration(
          color: chatThemeData.colorTheme.overlayDark,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Text(
          _calculateDayName(context),
          style: chatThemeData.textTheme.footnote,
        ),
      ),
    );
  }

  String _calculateDayName(BuildContext context) {
    final Jiffy createdAt = Jiffy(dateTime);
    final DateTime now = DateTime.now();

    if (Jiffy(createdAt).isSame(now, Units.DAY)) {
      return Str.of(context).commonToday;
    } else if (Jiffy(createdAt).isSame(now.subtract(const Duration(days: 1)), Units.DAY)) {
      return Str.of(context).commonYesterday;
    } else if (Jiffy(createdAt).isAfter(
      now.subtract(const Duration(days: 7)),
      Units.DAY,
    )) {
      return createdAt.EEEE;
    } else {
      return createdAt.MMMd;
    }
  }
}
