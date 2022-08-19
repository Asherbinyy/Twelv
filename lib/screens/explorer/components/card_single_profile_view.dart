import 'package:flutter/material.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/components/profile_card_container.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';
import 'package:twelv/screens/explorer/profile_card_bloc_parent.dart';

import 'explorer_fake_card_behind_view.dart';

class CardSingleProfileView extends StatelessWidget {
  final Widget cardContentView;

  const CardSingleProfileView({required this.cardContentView, Key? key}) : super(key: key);

  factory CardSingleProfileView.fromProfile(Profile profile,
          {bool isSuperlikeEnabled = true, int currentUserCredits = 0}) =>
      CardSingleProfileView(
          cardContentView: ProfileCardBlocParent(
        profile: profile,
        isSuperlikeEnabled: isSuperlikeEnabled,
        currentUserCredits: currentUserCredits,
      ));

  factory CardSingleProfileView.fromMatchUserId(BuildContext context, {required int userId}) =>
      CardSingleProfileView(
          cardContentView: ProfileCardBlocParent(
        userId: userId,
        isSocialActionEnabled: false,
        isSuperlikeEnabled: false,
        currentUserCredits: CurrentUserWidget.of(context).currentUser.credits,
      ));

  factory CardSingleProfileView.fromCurrentUser(CurrentUser currentUser) =>
      CardSingleProfileView(cardContentView: ProfileCardContentView.fromCurrentUser(currentUser));

  @override
  Widget build(BuildContext context) {
    const double margin = 15;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 100, 15, 102),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          const ExplorerFakeCardBehindView(
            margin: margin / 2,
            bottomMargin: 0,
          ),
          padded(
              ProfileCardContainer(
                child: cardContentView,
              ),
              bottom: margin),
        ],
      ),
    );
  }
}
