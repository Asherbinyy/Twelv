import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_zodiac_view.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/recommendation/swipe_match.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
import 'package:twelv/screens/home/chat/bloc/chat_state.dart';
import 'package:twelv/services/navigation/navigation.dart';

class MatchView extends StatelessWidget {
  final SwipeMatch swipeMatch;
  final String? imageUrl;
  final String userName;
  final ZodiacSign? sunSign;
  final ZodiacSign? astroSign;

  const MatchView({
    required this.imageUrl,
    required this.userName,
    required this.swipeMatch,
    this.sunSign,
    this.astroSign,
    Key? key,
  }) : super(key: key);

  factory MatchView.user(SwipeMatch swipeMatch, BaseUser user) => MatchView(
        swipeMatch: swipeMatch,
        imageUrl: user.avatar?.url,
        userName: user.name ?? "",
        sunSign: user.sunSign,
        astroSign: user.astrologicalSign,
      );

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          if (imageUrl != null) _buildUserImage(imageUrl!),
          _buildBackgroundImage(context),
          Align(
            alignment: Alignment.topCenter,
            child: padded(Image(image: context.theme.logoWhiteHeaderImage), top: 50),
          ),
          _buildContent(context),
        ],
      );

  Widget _buildContent(BuildContext context) => padded(
      Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image(
              width: 55,
              image: context.theme.starsMatchImage,
            ),
            padded(
                Text(
                  Str.of(context).matchTitleText,
                  style: context.theme.textTheme.headline1
                      ?.copyWith(color: Colors.white, fontSize: 36),
                ),
                top: 5),
            padded(
                Text(
                  Str.of(context).matchSubtitleText,
                  style: context.theme.textTheme.bodyText1
                      ?.copyWith(fontSize: 18, color: Colors.white, fontWeight: FontWeight.normal),
                ),
                top: 25),
            padded(
                Text(userName,
                    style: context.theme.textTheme.headline1
                        ?.copyWith(color: Colors.white, fontSize: 32)),
                top: 5),
            AppZodiacView(sunSign: sunSign, astrologicalSign: astroSign, horizontal: false),
            padded(_buildStartConversationButton(context), top: 15),
            padded(
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: paddedAll(
                    Text(
                      Str.of(context).matchViewReturnButtonTitle,
                      style: context.theme.textTheme.bodyText1?.copyWith(
                          color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    padding: 15),
              ),
            ),
          ],
        ),
      ),
      left: 14,
      right: 14,
      bottom: 50);

  Widget _buildBackgroundImage(BuildContext context) => Image(
      width: double.infinity,
      // ignore: no-equal-arguments
      height: double.infinity,
      fit: BoxFit.cover,
      image: context.theme.matchBackgroundOverlayImage);

  Widget _buildUserImage(String imageUrl) => Image.network(
        imageUrl,
        width: double.infinity,
        // ignore: no-equal-arguments
        height: double.infinity,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      );

  Widget _buildStartConversationButton(BuildContext context) => BlocBuilder<ChatBloc, ChatState>(
      builder: (BuildContext context, ChatState state) => AppButtonFilled(
            Str.of(context).matchSendMessageButtonTitle,
            fillParent: false,
            type: AppButtonType.secondary,
            enabled: state is NewChannel &&
                state.newChannel.containsUserAsMember(uid: swipeMatch.matchedGetStreamUUID),
            onPressed: () {
              Navigator.of(context).pop();
              navigator(NavigationService.home).navigateTo(HomeRoutes.chatChannel,
                  args: (state as NewChannel).newChannel.channel);
            },
          ));
}
