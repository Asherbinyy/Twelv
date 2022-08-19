import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/common/extensions/string_extension.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';

class AppZodiacView extends StatelessWidget {
  final ZodiacSign? sunSign;
  final ZodiacSign? astrologicalSign;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final bool horizontal;

  TextStyle getTitleTextStyle(BuildContext context) =>
      titleTextStyle ??
      context.theme.textTheme.headline3!
          .copyWith(fontFamily: context.theme.platformFont, color: Colors.white);

  TextStyle getSubtitleTextStyle(BuildContext context) =>
      subtitleTextStyle ??
      context.theme.textTheme.bodyText1!.copyWith(fontSize: 16, color: Colors.white);

  const AppZodiacView({
    required this.sunSign,
    required this.astrologicalSign,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.horizontal = true,
    Key? key,
  }) : super(key: key);

  factory AppZodiacView.fromUser(BaseUser user,
          {TextStyle? titleTextStyle, TextStyle? subtitleTextStyle, bool horizontal = true}) =>
      AppZodiacView(
        sunSign: user.sunSign,
        astrologicalSign: user.astrologicalSign,
        titleTextStyle: titleTextStyle,
        subtitleTextStyle: subtitleTextStyle,
        horizontal: horizontal,
      );

  @override
  Widget build(BuildContext context) {
    if (sunSign == null) return const SizedBox.shrink();
    final List<Widget> widgets = <Widget>[
      Image(
        width: 50,
        height: 50,
        image: sunSign!.image(context),
      ),
      SizedBox(
        width: 10,
        height: horizontal ? 0 : 10,
      ),
      Column(
          crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(sunSign!.name(context).capitalized(), style: getTitleTextStyle(context)),
            if (astrologicalSign != null)
              RichText(
                text: TextSpan(style: getSubtitleTextStyle(context), children: <TextSpan>[
                  TextSpan(text: "${Str.of(context).zodiacAscendantText} "),
                  TextSpan(
                      text: astrologicalSign!.name(context).capitalized(),
                      style: const TextStyle(fontWeight: FontWeight.bold))
                ]),
              ),
          ])
    ];
    return horizontal
        ? Row(
            children: widgets,
          )
        : Column(
            children: widgets,
          );
  }
}
