import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';

class MyProfilSectionCardView extends StatelessWidget {
  final Widget child;
  final bool showChevron;

  const MyProfilSectionCardView({required this.child, Key? key, this.showChevron = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
            ),
          ],
        ),
        child: showChevron
            ? Row(
                children: <Widget>[
                  child,
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Center(
                      child: Image(
                        width: 20,
                        height: 20,
                        image: context.theme.chevronImage,
                      ),
                    ),
                  )
                ],
              )
            : child,
      );
}
