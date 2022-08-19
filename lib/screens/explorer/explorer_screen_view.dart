import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/blocs/location/location_bloc.dart';
import 'package:twelv/blocs/location/location_event.dart';
import 'package:twelv/common/components/dialog/info_dialog_view.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_background_view.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event_abstract.dart';
import 'package:twelv/screens/explorer/bloc/explorer_state.dart';
import 'package:twelv/screens/explorer/components/explorer_card_behind_view.dart';
import 'package:twelv/screens/explorer/components/explorer_fake_card_behind_view.dart';
import 'package:twelv/screens/explorer/components/explorer_no_profile_view.dart';
import 'package:twelv/screens/explorer/components/filters_popup.dart';
import 'package:twelv/screens/explorer/components/profile_card_container.dart';
import 'package:twelv/screens/explorer/components/profile_card_content_view.dart';
import 'package:twelv/screens/explorer/profile_card_bloc_parent.dart';
import 'package:twelv/screens/match/match_view.dart';
import 'package:twelv/services/errors/premium_actions_error_resolver.dart';

import 'components/profile_card_content_view.dart';

class ExplorerScreenView extends StatefulWidget {
  const ExplorerScreenView({Key? key}) : super(key: key);

  @override
  _ExplorerScreenViewState createState() => _ExplorerScreenViewState();
}

class _ExplorerScreenViewState extends State<ExplorerScreenView>
    with SingleTickerProviderStateMixin {
  double _rotationAngle = 0;
  bool _allowRotate = true;
  double _likePercentage = 0;
  double margin = 15;
  bool _userIsInteracting = false;

  final Duration _rotateAnimationDuration = const Duration(milliseconds: 400);
  final double _rotateUserDecidePointAngle = 0.05;
  final double _rotateOffsetDivider = 10;
  final double _animationRotationCardHideAngle = 0.35;
  final double _colorTransparency = 0.5;

  AnimationController? _animationController;
  Animation<double>? _animation;

  // region Animation

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _rotateAnimationDuration);
  }

  @override
  void dispose() {
    _animationController?.dispose();
    _loadingTimer?.cancel();
    super.dispose();
  }

  void _setAnimationRotation(double value) {
    _rotationAngle = value;
    final double likePercent = _rotationAngle / _rotateUserDecidePointAngle;
    if (likePercent > 1) {
      _likePercentage = 1;
    } else if (likePercent < -1) {
      _likePercentage = -1;
    } else {
      _likePercentage = likePercent;
    }
  }

  num degreesToRads(num deg) {
    return (deg * pi) / 180.0; // ignore: no-magic-number
  }

  void _startAnimateRotation(double targetValue) {
    _animation =
        Tween<double>(begin: _rotationAngle, end: targetValue).animate(_animationController!)
          ..addStatusListener((AnimationStatus state) {
            if (state == AnimationStatus.completed) {
              setState(() {
                _userIsInteracting = false;
              });
            }
          })
          ..addListener(() {
            if (_animation != null) {
              setState(() {
                _setAnimationRotation(_animation!.value);
              });
            }
          });

    _animationController?.reset();
    _animationController?.forward();
  }

  // endregion

  // region Layout
  Timer? _loadingTimer;

  @override
  Widget build(BuildContext context) => BlocConsumer<ExplorerBloc, ExplorerState>(
        buildWhen: (_, ExplorerState state) =>
            state is! Loading && state is! ExplorerError && state is! Match,
        listener: (BuildContext context, ExplorerState state) async {
          if (state is Initial) {
            showLoadingView(context);
          } else if (state is Loading) {
            _loadingTimer = Timer(Duration(seconds: state.delay ? 1 : 0), () {
              showLoadingView(context);
            });
          } else {
            _loadingTimer?.cancel();
            hideLoadingView(context);
            if (state is ExplorerError) {
              final bool? spendCredit = await DependenciesContainer()
                  .get<PremiumActionsErrorResolver>()
                  .willSpendCreditToResolveError(state.error,
                      context: context,
                      isSuperlike: state.event is Superlike,
                      currentUser: CurrentUserWidget.of(context).currentUser,
                      useCredit:
                          state.event is SwipeEvent ? (state.event as SwipeEvent).useCredit : null);

              if (spendCredit != null) {
                if (spendCredit) {
                  if (state.event is Like) {
                    final Like event = state.event as Like;
                    context
                        .read<ExplorerBloc>()
                        .add(Like(user: event.user, delay: event.delay, useCredit: true));
                  } else if (state.event is Dislike) {
                    final Dislike event = state.event as Dislike;
                    context
                        .read<ExplorerBloc>()
                        .add(Dislike(user: event.user, delay: event.delay, useCredit: true));
                  } else if (state.event is Superlike) {
                    final Superlike event = state.event as Superlike;
                    context
                        .read<ExplorerBloc>()
                        .add(Superlike(user: event.user, delay: event.delay, useCredit: true));
                  }
                }
              } else {
                showErrorOverlay(state.error, context: context);
              }
            } else if (state is Match) {
              showDialog(
                context: context,
                useSafeArea: false,
                useRootNavigator: false,
                builder: (BuildContext buildContext) =>
                    MatchView.user(state.swipeMatch, state.userRecommended),
              );
            } else if (state is FetchedData && state.isAfterReportingProfile) {
              showInfoDialog(context, "", Str.of(context).profileCardProfileReportedSuccessTitle);
            } else if (state is Superliked) {
              showInfoDialog(context, "", Str.of(context).superlikedAlertMessage);
            }
          }
        },
        builder: (BuildContext context, ExplorerState state) {
          final List<Widget> widgets = <Widget>[];
          if (state is FetchedData) {
            if (!_userIsInteracting) {
              _setAnimationRotation(0);
            }

            if (state.userRecommendations.data.isNotEmpty) {
              if (state.userRecommendations.data.length > 1) {
                widgets.add(ExplorerFakeCardBehindView(
                  margin: margin,
                ));
                widgets.add(ExplorerCardBehindView(
                    margin: margin, recommendation: state.userRecommendations.data[1]));
              }
              widgets.add(_buildRotateTransform(context, state.userRecommendations.data.first));
            } else {
              widgets.add(
                ExplorerNoProfilesView(
                  type: NoProfileViewType.emptyList,
                  onPressedButton: () => showDialog(
                    context: context,
                    useRootNavigator: false,
                    builder: (_) => FiltersPopup(
                      recommendationsFilters: context.read<ExplorerBloc>().model.filters,
                    ),
                  ),
                ),
              );
            }
          } else if (state is NoLocation) {
            widgets.add(
              ExplorerNoProfilesView(
                type: NoProfileViewType.deniedLocation,
                onPressedButton: () =>
                    context.read<LocationBloc>().add(const LocationEvent.updateApi(askAgain: true)),
              ),
            );
          }
          return AppBackgroundContainer(
              backgroundImage: context.theme.homeBackgroundImage,
              child: SafeArea(
                child: Stack(
                  children: widgets,
                ),
              ));
        },
      );

  // endregion

  // region Rotate and gesture

  Widget _buildRotateTransform(BuildContext context, Profile user) {
    return Transform.rotate(
        angle: _rotationAngle,
        alignment: Alignment.bottomCenter,
        origin: const Offset(0, 1000),
        child: Container(
          // ignore: no-equal-arguments
          padding: EdgeInsets.fromLTRB(
              margin, margin, margin, 35), // ignore: no-magic-number, no-equal-arguments
          child: _buildCardGestureContainer(context, user),
        ));
  }

  Widget _buildCardGestureContainer(BuildContext context, Profile user) {
    return Container(
        decoration: BoxDecoration(
            gradient: _rotationAngle == 0
                ? null
                : LinearGradient(colors: <Color>[
                    if (_rotationAngle < -0.1) context.theme.dislikeOverlay else Colors.transparent,
                    if (_rotationAngle > 0.1) context.theme.likeOverlay else Colors.transparent,
                  ])),
        child: GestureDetector(
          onHorizontalDragStart: (DragStartDetails details) {
            setState(() {
              _userIsInteracting = true;
              _animationController?.stop();
            });
          },
          onHorizontalDragEnd: (DragEndDetails details) {
            setState(() {
              if (_likePercentage.abs() < 1) {
                _startAnimateRotation(0);
              } else if (_likePercentage >= 1) {
                context.read<ExplorerBloc>().add(ExplorerEvent.like(user: user, delay: true));
                _startAnimateRotation(_animationRotationCardHideAngle);
              } else if (_likePercentage <= -1) {
                context.read<ExplorerBloc>().add(ExplorerEvent.dislike(user: user, delay: true));
                _startAnimateRotation(-1 * _animationRotationCardHideAngle);
              }
            });
          },
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            if (_allowRotate) {
              setState(() {
                // ignore: no-magic-number
                _setAnimationRotation(_rotationAngle +
                    degreesToRads(details.primaryDelta!) * 0.3 / _rotateOffsetDivider);
              });
            }
          },
          child: _buildCardLayout(context, user),
        ));
  }

  // endregion

  // region Card content

  Widget _buildCardLayout(BuildContext context, Profile profile) {
    return ProfileCardContainer(
      child: Stack(children: <Widget>[
        ProfileCardBlocParent(
          profile: profile,
          likePercentage: _likePercentage,
          allowRotate: (bool value) {
            _allowRotate = value;
          },
          callback: (ProfileActionType actionType) =>
              _profileAction(context, profile: profile, actionType: actionType),
          currentUserCredits: CurrentUserWidget.of(context).currentUser.credits,
        ),
        Visibility(
          visible: _likePercentage != 0,
          child: Opacity(
            opacity: 1 * _likePercentage.abs(),
            child: Container(
              color: _likePercentage > 0
                  ? context.theme.likeOverlay.withOpacity(_colorTransparency * _likePercentage)
                  : context.theme.dislikeOverlay
                      .withOpacity(_colorTransparency * _likePercentage.abs()),
              width: double.infinity,
              child: Center(
                child: Image(
                  color: Colors.white,
                  image: _likePercentage > 0
                      ? context.theme.likeCardImage
                      : context.theme.dislikeCardImage,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  // endregion

  // region User Action

  void _profileAction(BuildContext context,
      {required Profile profile, required ProfileActionType actionType}) {
    const bool delay = false;
    switch (actionType) {
      case ProfileActionType.like:
        context.read<ExplorerBloc>().add(ExplorerEvent.like(user: profile, delay: delay));
        break;
      case ProfileActionType.dislike:
        context.read<ExplorerBloc>().add(ExplorerEvent.dislike(user: profile, delay: delay));
        break;
      case ProfileActionType.superlike:
        context.read<ExplorerBloc>().add(ExplorerEvent.superlike(user: profile, delay: delay));
        break;
      case ProfileActionType.report:
        context.read<ExplorerBloc>().add(ExplorerEvent.reportProfile(user: profile, delay: delay));
        break;
    }
  }

// endregion

}
