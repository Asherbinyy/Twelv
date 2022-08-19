import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_bloc.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_event.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_state.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';
import 'package:twelv/services/errors/premium_actions_error_resolver.dart';

class ProfileCardBlocParent extends StatelessWidget {
  final Profile? profile;
  final int? userId;
  final ValueChanged<bool>? allowRotate;
  final ProfileActionCallback? callback;
  final bool isSuperlikeEnabled;
  final bool isSocialActionEnabled;
  final double likePercentage;
  final int currentUserCredits;

  const ProfileCardBlocParent(
      {this.profile,
      this.userId,
      this.allowRotate,
      this.callback,
      this.isSuperlikeEnabled = true,
      this.isSocialActionEnabled = true,
      this.likePercentage = 0,
      this.currentUserCredits = 0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<UserProfileBloc>(
        create: (_) {
          final UserProfileBloc bloc = DependenciesContainer().get<UserProfileBloc>()
            ..explorerBloc = context.read<ExplorerBloc>()
            ..likesBloc = context.read<LikesBloc>();
          if (profile == null && userId != null) {
            bloc.add(UserProfileEvent.fetch(userId: userId!, useCredit: false));
          }
          return bloc;
        },
        child: BlocConsumer<UserProfileBloc, UserProfileState>(
          listener: (BuildContext context, UserProfileState state) {
            manageLoadingView(context, show: state is Loading);
            if (state is ApiError) {
              if (DependenciesContainer()
                  .get<PremiumActionsErrorResolver>()
                  .is403PremiumActionError(state.error)) {
                NoAccessPremiumInfo.present(context, NoAccessType.compatibilitiesDisabled);
              } else {
                showErrorOverlay(state.error, context: context);
              }
            }
          },
          buildWhen: (_, UserProfileState state) => state is Initial || state is FetchedData,
          builder: (BuildContext context, UserProfileState state) {
            final Profile? showProfile = (state is FetchedData) ? state.profile : profile;

            return showProfile != null
                ? ProfileCardContentView.fromProfile(showProfile,
                    allowRotate: allowRotate,
                    callback: callback,
                    isSuperlikeEnabled: isSuperlikeEnabled,
                    isSocialActionEnabled: isSocialActionEnabled,
                    likePercentage: likePercentage,
                    currentUserCredits: currentUserCredits,
                    showDistance: CurrentUserWidget.of(context).currentUser.isLocationProvided)
                : const SizedBox.shrink();
          },
        ),
      );
}
