// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/image/image_network_with_loader.dart';
import 'package:twelv/components/app_profil_main_score_view.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_zodiac_view.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';

class CardProfileTopSectionView extends StatelessWidget {
  final double? mainScore;
  final double? distance;
  final bool isSuperlike;
  final bool isProfileOfDay;
  final bool isSocialActionEnabled;
  final bool isCloseButtonVisible;
  final bool isSuperlikeEnabled;
  final ProfileActionCallback onPressed;
  final BaseUser user;

  const CardProfileTopSectionView({
    required this.onPressed,
    required this.user,
    this.mainScore,
    this.distance,
    this.isSuperlike = false,
    this.isProfileOfDay = false,
    this.isSocialActionEnabled = true,
    this.isSuperlikeEnabled = true,
    this.isCloseButtonVisible = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = user.name ?? "";
    final int year = user.age;
    return Stack(
      children: <Widget>[
        Image(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
            image: context.theme.profileUserCardNoPictures),
        if (user.avatar?.url.isNotEmpty == true && !isProfileOfDay)
          ImageNetworkWithLoader(
            url: user.avatar!.url,
            width: double.infinity,
            height: double.infinity,
            resizeProgress: false,
          ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 145,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black.withOpacity(0.4), Colors.transparent],
              ),
            ),
          ),
        ),
        if (isCloseButtonVisible)
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Image(
                image: context.theme.deleteImage,
              ),
            ),
          ),
        if (mainScore != null)
          AppProfilMainScoreView(
              mainScore: mainScore!, padding: const EdgeInsets.only(left: 20, top: 20)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[Colors.black, Colors.transparent],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (isSuperlike || isProfileOfDay)
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: isSuperlike ? const Color(0xff00aedc) : context.theme.textDarkColor),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                      child: AppText(
                          isSuperlike
                              ? Str.of(context).profileCardSuperlikeBadgeTitle
                              : Str.of(context).profileCardProfileOfDayBadgeTitle,
                          color: Colors.white,
                          type: AppTextType.title3),
                    ),
                  ),
                AppText(
                  "$name, $year",
                  color: Colors.white,
                ),
                AppZodiacView.fromUser(user),
                if (distance != null)
                  Row(
                    children: <Widget>[
                      Image(
                        image: context.theme.locationWhiteImage,
                      ),
                      Text(
                        _calculateDistance(distance!),
                        style: context.theme.textTheme.bodyText1!
                            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                if (distance == null)
                  const SizedBox(
                    height: 5,
                  ),
              ],
            ),
          ),
        ),
        if (isSocialActionEnabled && isSuperlikeEnabled)
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                margin: const EdgeInsets.only(bottom: 25, right: 25),
                width: 50,
                height: 50,
                child: GestureDetector(
                  onTap: () => onPressed(ProfileActionType.superlike),
                  child: Image(
                    image: context.theme.superlikeImage,
                  ),
                )),
          ),
        if (isSuperlike || isProfileOfDay)
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 10,
              color: isSuperlike ? const Color(0xff00aedc) : context.theme.textDarkColor,
            ),
          )
      ],
    );
  }

  String _calculateDistance(double distance) {
    return distance < 1000 ? "< 1km" : "${(distance / 1000).round()} km";
  }
}
