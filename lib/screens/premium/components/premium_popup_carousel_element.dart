import 'package:flutter/material.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_text.dart';

class PremiumPopupCarouselElement extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String content;

  const PremiumPopupCarouselElement({
    required this.image,
    required this.title,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: image,
              width: 145,
              height: 145,
            ),
            padded(
                AppText(
                  title,
                  type: AppTextType.title2,
                  align: TextAlign.center,
                ),
                top: 15),
            padded(
                AppText(
                  content,
                  type: AppTextType.body1,
                  align: TextAlign.center,
                ),
                top: 10)
          ],
        ),
      );
}
