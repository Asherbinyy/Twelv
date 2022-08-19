import 'package:flutter/material.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/components/profile_card_container.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';

class ExplorerCardBehindView extends StatelessWidget {
  final double margin;
  final Profile recommendation;

  const ExplorerCardBehindView({required this.margin, required this.recommendation, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(margin, margin, margin, 35),
        child: ProfileCardContainer(
          child: ProfileCardContentView.fromProfile(
            recommendation,
            showDistance: CurrentUserWidget.of(context).currentUser.isLocationProvided,
          ),
        ),
      );
}
