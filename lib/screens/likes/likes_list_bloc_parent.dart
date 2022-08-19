import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/dialog/info_dialog_view.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/analytics/event_analytics.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event_abstract.dart';
import 'package:twelv/screens/explorer/components/card_single_profile_view.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';
import 'package:twelv/screens/explorer/profile_card_bloc_parent.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_event.dart';
import 'package:twelv/screens/likes/bloc/likes_state.dart';
import 'package:twelv/screens/likes/likes_list_view.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_bloc.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_event.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_state.dart' as user_profile;
import 'package:twelv/screens/match/match_view.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/errors/premium_actions_error_resolver.dart';

class LikesListBlocParent extends StatelessWidget {
  const LikesListBlocParent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<UserProfileBloc>(
            create: (_) => DependenciesContainer().get<UserProfileBloc>()
              ..likesBloc = context.read<LikesBloc>()
              ..explorerBloc = context.read<ExplorerBloc>(),
          )
        ],
        child: MultiBlocListener(
          listeners: <BlocListener<dynamic, dynamic>>[
            BlocListener<LikesBloc, LikesState>(
                listener: (BuildContext context, LikesState state) async {
              manageLoadingView(context, show: state is Loading);
              if (state is Match) {
                _showMatchDialog(context, state);
              } else if (state is LikesError) {
                _didReceiveLikesError(context, state);
              } else if (state is FetchedData && state.isAfterReportingProfile) {
                showInfoDialog(context, "", Str.of(context).profileCardProfileReportedSuccessTitle);
              } else if (state is Superliked) {
                showInfoDialog(context, "", Str.of(context).superlikedAlertMessage);
              }
            }),
            BlocListener<UserProfileBloc, user_profile.UserProfileState>(
              listener: (BuildContext context, user_profile.UserProfileState state) async {
                manageLoadingView(context, show: state is user_profile.Loading);
                if (state is user_profile.FetchedData) {
                  _showUserProfileView(context, state.profile);
                } else if (state is user_profile.ApiError) {
                  _didReceiveProfileError(context, state);
                }
              },
            )
          ],
          child: BlocBuilder<LikesBloc, LikesState>(
            builder: (BuildContext context, LikesState state) => LikesListView(
              profiles: (state is FetchedData) ? state.users : <Profile>[],
              onSelectedProfile: (Profile profile) => profile.isBlocked
                  ? _askToSpendCreditForUser(context, profile)
                  : _showUserProfileView(context, profile),
            ),
          ),
        ),
      );

  // region Premium

  void _didReceiveProfileError(BuildContext context, user_profile.ApiError state) {
    if (DependenciesContainer()
        .get<PremiumActionsErrorResolver>()
        .is403PremiumActionError(state.error)) {
      NoAccessPremiumInfo.present(context, NoAccessType.blurredImageLikesMe);
    } else {
      showErrorOverlay(state.error, context: context);
    }
  }

  Future<void> _didReceiveLikesError(BuildContext context, LikesError error) async {
    final bool? spendCredit = await DependenciesContainer()
        .get<PremiumActionsErrorResolver>()
        .willSpendCreditToResolveError(error.error,
            context: context,
            isSuperlike: error.event is Superlike,
            currentUser: CurrentUserWidget.of(context).currentUser,
            useCredit: error.event is SwipeEvent ? (error.event as SwipeEvent).useCredit : null);

    if (spendCredit != null) {
      if (spendCredit) {
        if (error.event is Like) {
          final Like event = error.event as Like;
          context.read<LikesBloc>().add(Like(user: event.user, useCredit: true));
        } else if (error.event is Dislike) {
          final Dislike event = error.event as Dislike;
          context.read<LikesBloc>().add(Dislike(user: event.user, useCredit: true));
        } else if (error.event is Superlike) {
          final Superlike event = error.event as Superlike;
          context.read<LikesBloc>().add(Superlike(user: event.user, useCredit: true));
        }
      }
    } else {
      showErrorOverlay(error.error, context: context);
    }
  }

  Future<void> _askToSpendCreditForUser(BuildContext context, Profile profile) async {
    DependenciesContainer()
        .get<AnalyticsTracker>()
        .log(EventAnalytics.blurredProfile(profile: profile));

    final bool? spendCredit = await DependenciesContainer()
        .get<PremiumActionsErrorResolver>()
        .askSpendCreditPer(NoAccessType.blurredImageLikesMe, context: context);
    if (spendCredit == true) {
      context
          .read<UserProfileBloc>()
          .add(UserProfileEvent.fetch(userId: profile.id, useCredit: true));
    } else {
      NoAccessPremiumInfo.present(context, NoAccessType.blurredImageLikesMe);
    }
  }

  // endregion

  // region User Profile

  void _showUserProfileView(BuildContext context, Profile profile) => showDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) => Material(
          type: MaterialType.transparency,
          child: CardSingleProfileView(
              cardContentView: ProfileCardBlocParent(
            profile: profile,
            isSuperlikeEnabled: false,
            callback: (ProfileActionType actionType) {
              Navigator.of(dialogContext).pop();
              _profileAction(context, profile: profile, actionType: actionType);
            },
            currentUserCredits: CurrentUserWidget.of(context).currentUser.credits,
          ))));

  void _profileAction(BuildContext context,
      {required Profile profile, required ProfileActionType actionType}) {
    switch (actionType) {
      case ProfileActionType.like:
        context.read<LikesBloc>().add(LikesEvent.like(user: profile));
        break;
      case ProfileActionType.dislike:
        context.read<LikesBloc>().add(LikesEvent.dislike(user: profile));
        break;
      case ProfileActionType.superlike:
        context.read<LikesBloc>().add(LikesEvent.superlike(user: profile));
        break;
      case ProfileActionType.report:
        context.read<LikesBloc>().add(LikesEvent.reportProfile(user: profile));
        break;
    }
  }

  void _showMatchDialog(BuildContext context, Match match) => showDialog(
        context: context,
        useSafeArea: false,
        useRootNavigator: false,
        builder: (BuildContext buildContext) =>
            MatchView.user(match.swipeMatch, match.userRecommended),
      );

// endregion
}
