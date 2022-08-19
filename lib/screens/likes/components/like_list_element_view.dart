// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_profil_main_score_view.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/profile.dart';

class LikeListElementView extends StatelessWidget {
  final String? mainPhotoUrl;
  final double? mainScore;
  final bool superliked;

  const LikeListElementView({
    required this.mainPhotoUrl,
    this.mainScore,
    this.superliked = false,
    Key? key,
  }) : super(key: key);

  factory LikeListElementView.user({required Profile user}) {
    return LikeListElementView(
      mainPhotoUrl: user.avatar?.url,
      mainScore: user.compatibility?.mainScore,
      superliked: user.superliked,
    );
  }

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Stack(
          children: <Widget>[
            Center(
              child: Image(width: 100, height: 100, image: context.theme.placeholderPersonImage),
            ),
            if (mainPhotoUrl != null) _buildImage(context, mainPhotoUrl!),
            if (mainScore != null)
              AppProfilMainScoreView(
                  mainScore: mainScore!, padding: const EdgeInsets.only(left: 10, top: 10)),
            if (superliked) const _SuperlikeBadge(),
          ],
        ),
      );

  Widget _buildImage(BuildContext context, String imageUrl) => Image.network(
        imageUrl,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      );
}

class _SuperlikeBadge extends StatelessWidget {
  const _SuperlikeBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10, left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff00aedc),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
            child: AppText(Str.of(context).profileCardSuperlikeBadgeTitle,
                color: Colors.white, type: AppTextType.title3),
          ),
        ),
      );
}
