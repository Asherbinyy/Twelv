// ignore_for_file: no-equal-arguments, no-magic-number

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/common/extensions/string_extension.dart';

import 'app_text.dart';

class AppTextHtml extends StatelessWidget {
  final String text;
  final AppTextType type;
  final Color? color;
  final OnTap? onLinkTap;
  final TextAlign textAlign;

  const AppTextHtml(
    this.text, {
    this.type = AppTextType.title1,
    this.textAlign = TextAlign.start,
    this.onLinkTap,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? style = type.style(context, color);
    return Html(
      data: "<p>${text.htmlFromPOE}</p>",
      style: <String, Style>{
        if (style != null)
          "p": Style(
              color: style.color,
              fontSize: FontSize(style.fontSize, units: "px"),
              fontWeight: style.fontWeight,
              fontFamily: style.fontFamily,
              textAlign: textAlign),
        "a": Style(
            color: context.theme.primaryColorDark,
            textDecoration: TextDecoration.underline,
            textDecorationStyle: TextDecorationStyle.solid,
            textDecorationColor: context.theme.primaryColorDark,
            textAlign: textAlign)
      },
      onLinkTap: onLinkTap,
      customRender: {
        "table": (context, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: (context.tree as TableLayoutElement).toWidget(context),
          );
        },
      },
    );
  }
}
