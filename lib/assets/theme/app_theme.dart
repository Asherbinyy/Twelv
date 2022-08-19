// ignore_for_file: no-equal-arguments, no-magic-number
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:twelv/components/app_slider_range.dart';

ThemeData appTheme = ThemeData(
    platform: Platform.isIOS ? TargetPlatform.iOS : TargetPlatform.android,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: _AppColor.primary,
    accentColor: _AppColor.accentPrimary,
    fontFamily: _AppFont.platform,
    appBarTheme: const AppBarTheme(elevation: 0, color: Colors.transparent),
    colorScheme: const ColorScheme.light(primary: _AppColor.accentPrimary),
    hintColor: _AppColor.textMedium,
    unselectedWidgetColor: _AppColor.textMedium,
    dividerTheme: const DividerThemeData(color: Color(0xffc6c6c8), thickness: 1),
    sliderTheme: SliderThemeData(
        activeTrackColor: _AppColor.accentSecondary,
        inactiveTrackColor: _AppColor.switchTrack,
        trackHeight: 1,
        trackShape: ClearPaddingTrackShape(),
        overlayColor: _AppColor.accentSecondary.withAlpha(32),
        thumbColor: _AppColor.accentSecondary),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: _AppColor.accentPrimary),
    textTheme: TextTheme(
        headline1: const TextStyle(
            fontSize: 32,
            fontFamily: _AppFont.app,
            fontWeight: FontWeight.w700,
            color: _AppColor.textDark,
            letterSpacing: 0),
        headline2: const TextStyle(
            fontSize: 25,
            fontFamily: _AppFont.app,
            fontWeight: FontWeight.w700,
            color: _AppColor.textDark,
            letterSpacing: 0),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: _AppFont.app,
            fontWeight: FontWeight.w700,
            color: _AppColor.textDark,
            letterSpacing: 0),
        headline4: const TextStyle(
            fontSize: 17,
            fontFamily: _AppFont.app,
            fontWeight: FontWeight.w700,
            color: _AppColor.textDark,
            letterSpacing: 0),
        headline5: const TextStyle(
            fontSize: 15,
            fontFamily: _AppFont.app,
            fontWeight: FontWeight.bold,
            color: _AppColor.textDark,
            letterSpacing: 0),
        bodyText1: TextStyle(
            fontSize: 16,
            fontFamily: _AppFont.platform,
            fontWeight: FontWeight.w300,
            color: _AppColor.textMedium,
            letterSpacing: 0),
        bodyText2: TextStyle(
            fontSize: 14,
            fontFamily: _AppFont.platform,
            fontWeight: FontWeight.w300,
            color: _AppColor.textMedium,
            letterSpacing: 0),
        caption: TextStyle(
            fontSize: 11,
            fontFamily: _AppFont.platform,
            fontWeight: FontWeight.w300,
            color: _AppColor.textMedium,
            letterSpacing: 0)));

extension ThemeDataTextStyleExtension on ThemeData {
  TextStyle? get inputText =>
      textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w500, color: _AppColor.accentPrimary);

  TextStyle? get bodyText1Accent => textTheme.bodyText1
      ?.copyWith(fontWeight: FontWeight.w500, color: _AppColor.accentPrimary, height: 1.6);

  TextStyle get tabBarTextStyle =>
      TextStyle(fontSize: 11, fontFamily: _AppFont.platform, fontWeight: FontWeight.w500);

  TextStyle get tagText => TextStyle(
      fontSize: 18,
      fontFamily: _AppFont.platform,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 0);

  TextStyle get cardProfileSectionHeaderText => TextStyle(
      fontSize: 21,
      fontFamily: _AppFont.platform,
      fontWeight: FontWeight.bold,
      color: _AppColor.textDark,
      letterSpacing: 0);

  TextStyle get compatibilitiesPopupHeader => textTheme.headline3!.copyWith(fontSize: 21);

  TextStyle get appButtonFilledSmall => TextStyle(
      fontSize: 15,
      fontFamily: _AppFont.platform,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 0);
}

extension ThemeDataColorExtension on ThemeData {
  Color get accentPrimaryLight => _AppColor.accentPrimaryLight;

  Color get accentSecondaryColor => _AppColor.accentSecondary;

  Color get accentSecondaryLightColor => _AppColor.accentSecondaryLight;

  Color get textDarkColor => _AppColor.textDark;

  Color get textMediumColor => _AppColor.textMedium;

  Color get switchTrackColor => _AppColor.switchTrack;

  Color get buttonDisabledOverlayColor => _AppColor.buttonDisabledOverlay;

  Color get textLightGrey => _AppColor.textLightGrey;

  Color get tabBarUnselected => _AppColor.tabBarUnselected;

  Color get errorLightColor => _AppColor.errorLight;

  Color get errorDarkColor => _AppColor.errorDark;

  Color get errorColor => _AppColor.error;

  Color get likeOverlay => _AppColor.likeOverlay;

  Color get dislikeOverlay => _AppColor.dislikeOverlay;
}

mixin _AppColor {
  static const Color primary = Color(0xfffdfafd);
  static const Color accentPrimary = Color(0xff072e9e);
  static const Color accentPrimaryLight = Color(0xffe6eaf5);
  static const Color accentSecondary = Color(0xfffe8369);
  static const Color accentSecondaryLight = Color(0xfff28f78);
  static const Color textDark = Color(0xff072e9e);
  static const Color textMedium = Color(0xff757e90);
  static const Color switchTrack = Color(0xffcfc8ce);
  static const Color buttonDisabledOverlay = Color(0xd9ffffff);
  static const Color textLightGrey = Color(0xffc2c2c2);
  static const Color tabBarUnselected = Color(0xffc2c2c2);
  static const Color errorDark = Color(0xff98134e);
  static const Color errorLight = Color(0xffffe1c8);
  static const Color error = Color(0xffff6d59);
  static const Color likeOverlay = Color(0xff072E9E);
  static const Color dislikeOverlay = Color(0xff98134E);
}

extension ThemeDataFontExtension on ThemeData {
  String get appFont => _AppFont.app;

  String get platformFont => _AppFont.platform;
}

extension ThemeValues on ThemeData {
  double get disabledOpacity => 0.4;
}

mixin _AppFont {
  static const String app = 'Didot';
  static String platform = Platform.isIOS ? 'SFProDisplay' : 'Roboto';
}

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  DeviceSizeClass get deviceSizeClass {
    final double screenWidth = MediaQuery.of(this).size.width;
    if (screenWidth < 400) {
      return DeviceSizeClass.phoneSmall;
    } else if (screenWidth < 600) {
      return DeviceSizeClass.phoneLarge;
    }
    return DeviceSizeClass.tablet;
  }
}

enum DeviceSizeClass { phoneSmall, phoneLarge, tablet }
