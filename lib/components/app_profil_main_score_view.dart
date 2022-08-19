import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/generated/l10n.dart';

class AppProfilMainScoreView extends StatelessWidget {
  final double mainScore;
  final EdgeInsets padding;

  const AppProfilMainScoreView({Key? key, required this.mainScore, required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: padding,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: context.theme.accentSecondaryColor,
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                image: context.theme.planetGradientImage,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                  "${Str.of(context).profileCardCompatibilitiesAffinitiesSubtitle} ${(mainScore.round()).toStringAsFixed(0)}%",
                  style: context.theme.textTheme.bodyText1!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
        ),
      );
}
