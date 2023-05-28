// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';
// import 'package:flutter_html/shims/dart_ui_fake.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';

class AppButtonRow extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback? onPressed;
  final double height;
  final double separatorHeight;

  const AppButtonRow({
    required this.title,
    this.subTitle,
    this.onPressed,
    this.height = 60,
    this.separatorHeight = 0.5,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        behavior: HitTestBehavior.opaque,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height - separatorHeight,
              child: Center(
                child: Row(
                  children: <Widget>[
                    _AppButtonRowTitle(
                      title: title,
                      subTitle: subTitle,
                    ),
                    Center(
                      child: Image(
                        width: 20,
                        height: 20,
                        image: context.theme.chevronImage,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: separatorHeight,
              color: const Color(0xffd8d8d8),
            )
          ],
        ),
      );
}

class _AppButtonRowTitle extends StatelessWidget {
  final String title;
  final String? subTitle;
  final int subTitleLines;

  const _AppButtonRowTitle({
    required this.title,
    this.subTitle,
    this.subTitleLines = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
        child: subTitle == null
            ? Text(title,
                style: context.theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Text(title,
                        style: context.theme.textTheme.bodyText2!
                            .copyWith(fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      subTitle!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: subTitleLines,
                      style: context.theme.textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400, color: context.theme.accentSecondaryColor),
                    )
                  ]),
      );
}
