// ignore_for_file: long-method

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';

class AppText extends StatelessWidget {
  final String text;
  final AppTextType type;
  final int lines;
  final TextAlign align;
  final Color? color;
  final double? size;

  const AppText(this.text,
      {this.type = AppTextType.title1,
      this.align = TextAlign.left,
      this.lines = 0,
      this.color,
      this.size});

  @override
  Widget build(BuildContext context) {
    final bool isLimited = lines > 0;
    return Text(
      text,
      maxLines: isLimited ? lines : null,
      softWrap: !isLimited,
      overflow: isLimited ? TextOverflow.ellipsis : TextOverflow.visible,
      style: type
          .style(context, color)
          ?.copyWith(fontSize: size ?? type.style(context, color)?.fontSize),
      textAlign: align,
    );
  }
}

enum AppTextType {
  title1,
  title2,
  title3,
  titleLight3,
  titleSecondary3,
  title4,
  body1,
  body2,
  body2Bold,
  body1Accent,
  input,
  tag,
  buttonFilled,
  buttonText,
  buttonTextBold,
  buttonSmall,
  settings,
  cardProfileSectionHeader,
  caption,
  popUpCompatibilitySectionHeader,
  popUpCompatibilitySectionValue,
}

extension AppTextTypeExtension on AppTextType {
  TextStyle? style(BuildContext context, Color? forcedColor) {
    final ThemeData theme = Theme.of(context);
    TextStyle? textStyle;
    switch (this) {
      case AppTextType.title1:
        textStyle = theme.textTheme.headline1;
        break;
      case AppTextType.title2:
        textStyle = theme.textTheme.headline2;
        break;
      case AppTextType.title3:
        textStyle = theme.textTheme.headline3;
        break;
      case AppTextType.titleLight3:
        textStyle = theme.textTheme.headline3?.copyWith(color: Colors.white, fontSize: 16);
        break;
      case AppTextType.titleSecondary3:
        textStyle = theme.textTheme.headline3?.copyWith(color: context.theme.accentSecondaryColor);
        break;
      case AppTextType.title4:
        textStyle = theme.textTheme.headline4;
        break;
      case AppTextType.body1:
        textStyle = theme.textTheme.bodyText1;
        break;
      case AppTextType.body2:
        textStyle = theme.textTheme.bodyText2;
        break;
      case AppTextType.body2Bold:
        textStyle = theme.textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold);
        break;
      case AppTextType.body1Accent:
        textStyle = theme.bodyText1Accent;
        break;
      case AppTextType.input:
        textStyle = theme.inputText;
        break;
      case AppTextType.tag:
        textStyle = theme.tagText;
        break;
      case AppTextType.buttonFilled:
        textStyle =
            theme.textTheme.bodyText1?.copyWith(color: Colors.white, fontWeight: FontWeight.w500);
        break;
      case AppTextType.buttonText:
        textStyle = theme.textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w500);
        break;
      case AppTextType.buttonTextBold:
        textStyle = theme.textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w700);
        break;
      case AppTextType.settings:
        textStyle = theme.textTheme.bodyText2?.copyWith(fontWeight: FontWeight.w500);
        break;
      case AppTextType.cardProfileSectionHeader:
        textStyle = theme.cardProfileSectionHeaderText;
        break;
      case AppTextType.popUpCompatibilitySectionHeader:
        textStyle = theme.compatibilitiesPopupHeader;
        break;
      case AppTextType.popUpCompatibilitySectionValue:
        textStyle =
            theme.compatibilitiesPopupHeader.copyWith(color: theme.accentSecondaryLightColor);
        break;
      case AppTextType.caption:
        textStyle = theme.textTheme.caption;
        break;
      case AppTextType.buttonSmall:
        textStyle = theme.appButtonFilledSmall;
        break;
    }
    return forcedColor == null ? textStyle : textStyle?.copyWith(color: forcedColor);
  }
}
