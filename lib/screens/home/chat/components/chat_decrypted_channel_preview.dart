// import 'package:collection/collection.dart' show IterableExtension, ListEquality;
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:jiffy/jiffy.dart';
// import 'package:stream_chat_flutter/src/extension.dart';
// import 'package:stream_chat_flutter/src/stream_svg_icon.dart';
// import 'package:stream_chat_flutter/stream_chat_flutter.dart';
// import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
// import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
//
// /// FIXME: https://dev.azure.com/tapptic/Twelv-love-TP-1509/_workitems/edit/42097
// /// Ugly copy-paste due to lack of ability to decrypt the last message by using [ChannelPreview] widget
// /// The class must be removed and [ChannelPreview] must be used as soon as our feature request is done by the GetStream
// class ChatDecryptedChannelPreview extends StatelessWidget {
//   const ChatDecryptedChannelPreview({
//     required this.channel,
//     Key? key,
//     this.onTap,
//     this.onLongPress,
//     this.onImageTap,
//     this.title,
//     this.subtitle,
//     this.leading,
//     this.sendingIndicator,
//     this.trailing,
//   }) : super(key: key);
//
//   /// Function called when tapping this widget
//   final void Function(Channel)? onTap;
//
//   /// Function called when long pressing this widget
//   final void Function(Channel)? onLongPress;
//
//   /// Channel displayed
//   final Channel channel;
//
//   /// The function called when the image is tapped
//   final VoidCallback? onImageTap;
//
//   /// Widget rendering the title
//   final Widget? title;
//
//   /// Widget rendering the subtitle
//   final Widget? subtitle;
//
//   /// Widget rendering the leading element, by default
//   /// it shows the [ChannelAvatar]
//   final Widget? leading;
//
//   /// Widget rendering the trailing element,
//   /// by default it shows the last message date
//   final Widget? trailing;
//   /// Widget rendering the sending indicator,
//   /// by default it uses the [SendingIndicator] widget
//   final Widget? sendingIndicator;
//
//   @override
//   Widget build(BuildContext context) {
//     final channelPreviewTheme = ChannelPreviewTheme.of(context);
//     final streamChatState = StreamChat.of(context);
//     return BetterStreamBuilder<bool>(
//         stream: channel.isMutedStream,
//         initialData: channel.isMuted,
//         builder: (context, data) => AnimatedOpacity(
//               opacity: data ? 0.5 : 1,
//               duration: const Duration(milliseconds: 300),
//               child: ListTile(
//                 visualDensity: VisualDensity.compact,
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 onTap: () => onTap?.call(channel),
//                 onLongPress: () => onLongPress?.call(channel),
//                 leading: leading ?? ChannelAvatar(onTap: onImageTap),
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Flexible(
//                       child: title ??
//                           ChannelName(
//                             textStyle: channelPreviewTheme.titleStyle,
//                           ),
//                     ),
//                     BetterStreamBuilder<List<Member>>(
//                       stream: channel.state?.membersStream,
//                       initialData: channel.state?.members,
//                       comparator: const ListEquality().equals,
//                       builder: (context, members) {
//                         if (members.isEmpty ||
//                             members.any((Member e) =>
//                                     e.user!.id == channel.client.state.currentUser?.id) !=
//                                 true) {
//                           return const SizedBox();
//                         }
//                         return UnreadIndicator(
//                           cid: channel.cid,
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//                 subtitle: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Flexible(child: subtitle ?? _buildSubtitle(context)),
//                     sendingIndicator ??
//                         Builder(
//                           builder: (context) {
//                             final lastMessage = channel.state?.messages.lastWhereOrNull(
//                               (m) => !m.isDeleted && m.shadowed != true,
//                             );
//                             if (lastMessage?.user?.id == streamChatState.currentUser?.id) {
//                               return Padding(
//                                 padding: const EdgeInsets.only(right: 4),
//                                 child: SendingIndicator(
//                                   message: lastMessage!,
//                                   size: channelPreviewTheme.indicatorIconSize,
//                                   isMessageRead: channel.state!.read
//                                           .where((element) =>
//                                               element.user.id !=
//                                               channel.client.state.currentUser!.id)
//                                           .where((element) =>
//                                               element.lastRead.isAfter(lastMessage.createdAt))
//                                           .isNotEmpty ==
//                                       true,
//                                 ),
//                               );
//                             }
//                             return const SizedBox();
//                           },
//                         ),
//                     trailing ?? _buildDate(context),
//                   ],
//                 ),
//               ),
//             ));
//   }
//
//   Widget _buildDate(BuildContext context) => BetterStreamBuilder<DateTime>(
//         stream: channel.lastMessageAtStream,
//         initialData: channel.lastMessageAt,
//         builder: (context, data) {
//           final lastMessageAt = data.toLocal();
//
//           String stringDate;
//           final now = DateTime.now();
//
//           final startOfDay = DateTime(now.year, now.month, now.day);
//
//           if (lastMessageAt.millisecondsSinceEpoch >= startOfDay.millisecondsSinceEpoch) {
//             stringDate = Jiffy(lastMessageAt.toLocal()).jm;
//           } else if (lastMessageAt.millisecondsSinceEpoch >=
//               startOfDay.subtract(const Duration(days: 1)).millisecondsSinceEpoch) {
//             stringDate = context.translations.yesterdayLabel;
//           } else if (startOfDay.difference(lastMessageAt).inDays < 7) {
//             stringDate = Jiffy(lastMessageAt.toLocal()).EEEE;
//           } else {
//             stringDate = Jiffy(lastMessageAt.toLocal()).yMd;
//           }
//
//           return Text(
//             stringDate,
//             style: ChannelPreviewTheme.of(context).lastMessageAtStyle,
//           );
//         },
//       );
//
//   Widget _buildSubtitle(BuildContext context) {
//     final channelPreviewTheme = ChannelPreviewTheme.of(context);
//     if (channel.isMuted) {
//       return Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           StreamSvgIcon.mute(
//             size: 16,
//           ),
//           Text(
//             '  ${context.translations.channelIsMutedText}',
//             style: channelPreviewTheme.subtitleStyle,
//           ),
//         ],
//       );
//     }
//     return TypingIndicator(
//       channel: channel,
//       alternativeWidget: _buildLastMessage(context),
//       style: channelPreviewTheme.subtitleStyle,
//     );
//   }
//
//   Widget _buildLastMessage(BuildContext context) => Align(
//         alignment: Alignment.centerLeft,
//         child: BetterStreamBuilder<List<Message>>(
//           stream: channel.state!.messagesStream,
//           initialData: channel.state!.messages,
//           builder: (context, data) {
//             final lastMessage = data.lastWhereOrNull((m) => !m.shadowed && !m.isDeleted);
//             if (lastMessage == null) {
//               return const SizedBox();
//             }
//
//             final channelPreviewTheme = ChannelPreviewTheme.of(context);
//             final messageTextStyle = channelPreviewTheme.subtitleStyle?.copyWith(
//                 color: channelPreviewTheme.subtitleStyle?.color,
//                 fontStyle: (lastMessage.isSystem || lastMessage.isDeleted)
//                     ? FontStyle.italic
//                     : FontStyle.normal);
//
//             var text = lastMessage.text;
//             if (text?.isNotEmpty == true) {
//               return FutureBuilder<String>(
//                   future: context
//                       .read<ChatBloc>()
//                       .decrypt(encryptedMessage: text!, senderUuid: lastMessage.user?.id),
//                   builder: (BuildContext context, AsyncSnapshot<String> snapshot) =>
//                       snapshot.connectionState == ConnectionState.done
//                           ? Text(snapshot.data ?? text ?? "", style: messageTextStyle)
//                           : const Center(
//                               child: SizedBox(
//                                 height: 8,
//                                 child: CircularProgressIndicator.adaptive(),
//                               ),
//                             ));
//             }
//             final parts = <String>[
//               ...lastMessage.attachments.map((e) {
//                 if (e.type == 'image') {
//                   return '📷';
//                 } else if (e.type == 'video') {
//                   return '🎬';
//                 } else if (e.type == 'giphy') {
//                   return '[GIF]';
//                 }
//                 return e == lastMessage.attachments.last
//                     ? (e.title ?? 'File')
//                     : '${e.title ?? 'File'} , ';
//               }),
//               lastMessage.text ?? '',
//             ];
//
//             text = parts.join(' ');
//
//             return Text.rich(
//               _getDisplayText(
//                 text,
//                 lastMessage.mentionedUsers,
//                 lastMessage.attachments,
//                 messageTextStyle,
//                 channelPreviewTheme.subtitleStyle?.copyWith(
//                   color: channelPreviewTheme.subtitleStyle?.color,
//                   fontStyle: (lastMessage.isSystem || lastMessage.isDeleted)
//                       ? FontStyle.italic
//                       : FontStyle.normal,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               textAlign: TextAlign.start,
//             );
//           },
//         ),
//       );
//
//   TextSpan _getDisplayText(
//     String text,
//     List<User> mentions,
//     List<Attachment> attachments,
//     TextStyle? normalTextStyle,
//     TextStyle? mentionsTextStyle,
//   ) {
//     final textList = text.split(' ');
//     final resList = <TextSpan>[];
//     for (final e in textList) {
//       if (mentions.isNotEmpty && mentions.any((element) => '@${element.name}' == e)) {
//         resList.add(TextSpan(
//           text: '$e ',
//           style: mentionsTextStyle,
//         ));
//       } else if (attachments.isNotEmpty &&
//           attachments.where((e) => e.title != null).any((element) => element.title == e)) {
//         resList.add(TextSpan(
//           text: '$e ',
//           style: normalTextStyle?.copyWith(fontStyle: FontStyle.italic),
//         ));
//       } else {
//         resList.add(TextSpan(
//           text: e == textList.last ? e : '$e ',
//           style: normalTextStyle,
//         ));
//       }
//     }
//
//     return TextSpan(children: resList);
//   }
// }
