import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/model/analytics/event_analytics.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/compatibility.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/components/card_profile_bottom_actions_view.dart';
import 'package:twelv/screens/explorer/components/card_profile_compatibility_section_view.dart';
import 'package:twelv/screens/explorer/components/card_profile_description_section_view.dart';
import 'package:twelv/screens/explorer/components/card_profile_photos_section_view.dart';
import 'package:twelv/screens/explorer/components/card_profile_scroll_widget.dart';
import 'package:twelv/screens/explorer/components/card_profile_top_section_view.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_bloc.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_event.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';

enum ProfileActionType {
  like,
  superlike,
  dislike,
  report,
}

typedef ProfileActionCallback = Function(ProfileActionType);

class ProfileCardContentView extends StatefulWidget {
  final ValueChanged<bool>? allowRotate;
  final double likePercentage;
  final BaseUser user;
  final Compatibility? compatibility;
  final double? distance;
  final bool isSuperlike;
  final bool isProfileOfDay;
  final bool isSocialActionEnabled;
  final bool isCloseButtonVisible;
  final bool isFullscreenGalleryEnabled;
  final bool isSuperlikeEnabled;
  final int currentUserCredits;
  final ProfileActionCallback? callback;

  const ProfileCardContentView({
    required this.user,
    this.compatibility,
    this.allowRotate,
    this.likePercentage = 0,
    this.distance,
    this.isSuperlike = false,
    this.isProfileOfDay = false,
    this.isSocialActionEnabled = true,
    this.isCloseButtonVisible = false,
    this.isFullscreenGalleryEnabled = true,
    this.isSuperlikeEnabled = true,
    this.callback,
    this.currentUserCredits = 0,
    Key? key,
  }) : super(key: key);

  factory ProfileCardContentView.fromMatchUser(Profile profile, {bool showDistance = true}) =>
      ProfileCardContentView(
        user: profile..distance = showDistance ? profile.distance : null,
        isSocialActionEnabled: false,
      );

  factory ProfileCardContentView.fromCurrentUser(CurrentUser user) => ProfileCardContentView(
        user: user,
        isSocialActionEnabled: false,
        isCloseButtonVisible: true,
        isFullscreenGalleryEnabled: false,
      );

  factory ProfileCardContentView.fromUser(BaseUser user) => ProfileCardContentView(
        user: user,
      );

  factory ProfileCardContentView.fromProfile(Profile profile,
          {ValueChanged<bool>? allowRotate,
          ProfileActionCallback? callback,
          bool isSocialActionEnabled = true,
          bool isSuperlikeEnabled = true,
          double likePercentage = 0,
          int currentUserCredits = 0,
          bool showDistance = true}) =>
      ProfileCardContentView(
        allowRotate: allowRotate,
        likePercentage: likePercentage,
        user: profile..distance = showDistance ? profile.distance : null,
        compatibility: profile.compatibility,
        distance: profile.distance,
        isSuperlike: profile.superliked,
        isSuperlikeEnabled: isSuperlikeEnabled,
        isProfileOfDay: profile.isProfileOfDay,
        currentUserCredits: currentUserCredits,
        isSocialActionEnabled: isSocialActionEnabled,
        callback: callback,
      );

  @override
  _ProfileCardContentViewState createState() => _ProfileCardContentViewState();
}

class _ProfileCardContentViewState extends State<ProfileCardContentView> {
  final double _scrollSize = 80;

  final double _scrollIndicatorHeight = 20;

  final double _scrollIndicatorWidth = 5;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverFillViewport(
                delegate: SliverChildListDelegate(<Widget>[
              CardProfileTopSectionView(
                  user: widget.user,
                  mainScore: widget.compatibility?.mainScore,
                  distance: widget.distance,
                  isSuperlike: widget.isSuperlike,
                  isProfileOfDay: widget.isProfileOfDay,
                  isSocialActionEnabled: widget.isSocialActionEnabled,
                  isSuperlikeEnabled: widget.isSuperlikeEnabled,
                  isCloseButtonVisible: widget.isCloseButtonVisible,
                  onPressed: (ProfileActionType profileActionType) {
                    _scrollController.jumpTo(0);
                    widget.callback?.call(profileActionType);
                  })
            ])),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              if (widget.user.about != null)
                CardProfileDescriptionSectionView(
                  description: widget.user.about!,
                ),
              if (widget.compatibility?.isNotEmpty() == true)
                CardProfileCompatibilitySectionView(
                  compatibility: widget.compatibility!,
                  currentUserCredits: widget.currentUserCredits,
                  onPressedPremium: () {
                    if (widget.currentUserCredits > 0) {
                      context
                          .read<UserProfileBloc>()
                          .add(UserProfileEvent.fetch(userId: widget.user.id, useCredit: true));
                      DependenciesContainer().get<AnalyticsTracker>().log(
                          EventAnalytics.unblockCompatibility(
                              user: widget.user,
                              distance: widget.distance,
                              isSuperlike: widget.isSuperlike,
                              compatibility: widget.compatibility));
                    } else {
                      NoAccessPremiumInfo.present(context, NoAccessType.compatibilitiesDisabled);
                    }
                  },
                ),
              if (widget.isSocialActionEnabled)
                CardProfileBottomActionsView(
                  user: widget.user,
                  isSuperlikeEnabled: widget.isSuperlikeEnabled,
                  onPressed: (ProfileActionType profileActionType) {
                    _scrollController.jumpTo(0);
                    widget.callback?.call(profileActionType);
                  },
                ),
              if (widget.user.images.isNotEmpty && !widget.isProfileOfDay)
                CardProfilePhotosSectionView(
                    images: widget.user.images, allowFullscreen: widget.isFullscreenGalleryEnabled),
              const SizedBox(
                height: 10,
              ),
            ]))
          ],
        ),
        Positioned(
            right: 15,
            top: 20,
            child: Container(
              width: _scrollIndicatorWidth,
              height: _scrollSize + _scrollIndicatorHeight,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(2.5)),
                color: const Color(0xffc4c4c4).withOpacity(0.3),
              ),
              child: Stack(
                children: <Widget>[
                  CardProfileScrollWidget(
                    allowRotate: widget.allowRotate ?? (_) {},
                    scrollController: _scrollController,
                    scrollSize: _scrollSize,
                    scrollIndicatorHeight: _scrollIndicatorHeight,
                    scrollIndicatorWidth: _scrollIndicatorWidth,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
