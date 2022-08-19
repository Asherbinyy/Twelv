// ignore_for_file: no-magic-number
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/dialog/options_dialog_view.dart';
import 'package:twelv/components/app_image_bottom_title_button_view.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';

class CardProfileBottomActionsView extends StatelessWidget {
  static const double _marginTop = 15;
  final BaseUser user;
  final bool isSuperlikeEnabled;
  final ProfileActionCallback onPressed;

  const CardProfileBottomActionsView(
      {Key? key, required this.user, required this.onPressed, this.isSuperlikeEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Spacer(),
              Column(
                children: <Widget>[
                  const SizedBox(height: _marginTop),
                  AppImageBottomTitleButtonView(
                    image: context.theme.nextImage,
                    title: Str.of(context).profileCardProfilNextBtnTitle,
                    onPressed: () => onPressed(ProfileActionType.dislike),
                  )
                ],
              ),
              const Spacer(),
              if (isSuperlikeEnabled)
                AppImageBottomTitleButtonView(
                  image: context.theme.superlikeImage,
                  title: Str.of(context).profileCardSuperlikeBtnTitle,
                  onPressed: () => onPressed(ProfileActionType.superlike),
                ),
              if (isSuperlikeEnabled) const Spacer(),
              Column(
                children: <Widget>[
                  const SizedBox(height: _marginTop),
                  AppImageBottomTitleButtonView(
                    image: context.theme.likeImage,
                    title: Str.of(context).profileCardLikeBtnTitle,
                    onPressed: () => onPressed(ProfileActionType.like),
                  )
                ],
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () => _onReportProfileClicked(context),
              child: AppText(
                Str.of(context).profileCardReportProfileBtnTitle,
                type: AppTextType.body2,
                color: context.theme.textLightGrey,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onReportProfileClicked(BuildContext context) => showOptionsDialog(
        context,
        Str.of(context).profileCardReportProfileBtnTitle,
        Str.of(context).profileCardReportConfirmPopupTitle,
        <ActionDialogData>[
          ActionDialogData(
              Str.of(context).commonPopupOkButtonTitle, () => onPressed(ProfileActionType.report)),
          ActionDialogData(Str.of(context).commonPopupCancelButtonTitle, () {}),
        ],
      );
}
