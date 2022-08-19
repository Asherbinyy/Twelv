import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';

class AppImageBottomTitleButtonView extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final VoidCallback? onPressed;

  const AppImageBottomTitleButtonView(
      {required this.image, required this.title, Key? key, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: onPressed,
          child: Image(
            width: 50,
            height: 50,
            image: image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(title,
            style: context.theme.textTheme.bodyText1!.copyWith(
                fontSize: 14, fontWeight: FontWeight.w600, color: context.theme.textDarkColor)),
      ],
    );
  }
}
