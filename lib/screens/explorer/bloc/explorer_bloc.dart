import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/model/analytics/event_analytics.dart';
import 'package:twelv/model/recommendation/swipe_action.dart';
import 'package:twelv/model/recommendation/swipe_match.dart';
import 'package:twelv/model/user/profiles.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event_abstract.dart';
import 'package:twelv/screens/explorer/bloc/explorer_model.dart';
import 'package:twelv/screens/explorer/bloc/explorer_state.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_event.dart';
import 'package:twelv/screens/profile/bloc/profile_state.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';

class ExplorerBloc extends Bloc<ExplorerEvent, ExplorerState> {
  final ExplorerModel model;
  final AnalyticsTracker _analyticsTracker;
  StreamSubscription<ProfileState>? _profileSub;
  ProfileBloc? _profileBloc;

  ExplorerBloc(this.model, this._analyticsTracker) : super(const ExplorerState.initial());

  @override
//ignore: long-method
  Stream<ExplorerState> mapEventToState(
    ExplorerEvent event,
  ) async* {
    if (model.isLocationMissing) {
      yield const ExplorerState.noLocation();
      return;
    }
    try {
      if (event is SwipeEvent) {
        final SwipeEvent swipeEvent = event as SwipeEvent;
        final SwipeAction swipeAction = SwipeAction(
            toUser: swipeEvent.user.id,
            like: event is Like || event is Superlike,
            superlike: event is Superlike);

        yield ExplorerState.loading(delay: swipeEvent.delay);

        final SwipeMatch? swipeMatch =
            await model.postSwipeAction(swipeAction, useCredit: swipeEvent.useCredit);
        _analyticsTracker
            .log(EventAnalytics.swipe(swipeAction: swipeAction, likeActionEvent: swipeEvent));

        if (swipeMatch != null) {
          if (event is Like) {
            yield ExplorerState.match(swipeMatch, event.user);
          } else if (event is Superlike) {
            yield ExplorerState.match(swipeMatch, event.user);
          }
        }

        if (swipeEvent.useCredit == true) {
          _profileBloc?.add(const ProfileEvent.reloadUser());
        }
        if (event is Superlike) {
          yield const ExplorerState.superliked();
        }
        yield ExplorerState.fetchedData(await model.getCachedUsersRecommendations());
      } else if (event is Skip) {
        yield ExplorerState.fetchedData(model.removeCachedUser(event.id));
      } else if (event is ReportProfile) {
        yield ExplorerState.loading(delay: event.delay);
        await model.reportUser(event.user);
        yield ExplorerState.fetchedData(await model.getCachedUsersRecommendations(),
            isAfterReportingProfile: true);
      } else {
        if (event is Filter) {
          model.filters = event.recommendationsFilters;
          yield const ExplorerState.loading(delay: false);
        } else {
          yield const ExplorerState.initial();
        }
        final Profiles profiles = await model.getUsersRecommendations();
        if (profiles.data.isEmpty) {
          _analyticsTracker
              .log(EventAnalytics.noProfileScreen(recommendationsFilters: model.filters));
        }
        yield ExplorerState.fetchedData(profiles);
      }
    } on DioError catch (e) {
      yield ExplorerState.explorerError(e, event);
    }
  }

  //ignore: avoid_setters_without_getters
  set profileBloc(ProfileBloc profileBloc) {
    _profileBloc = profileBloc;
    _profileSub = profileBloc.stream.where((ProfileState state) => state is User).listen((_) {
      add(const ExplorerEvent.fetch());
    });
  }

  @override
  Future<void> close() {
    _profileSub?.cancel();
    return super.close();
  }
}
