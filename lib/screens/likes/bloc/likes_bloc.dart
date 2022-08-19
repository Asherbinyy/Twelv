import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/model/analytics/event_analytics.dart';
import 'package:twelv/model/recommendation/swipe_action.dart';
import 'package:twelv/model/recommendation/swipe_match.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart' as explorer;
import 'package:twelv/screens/explorer/bloc/explorer_event_abstract.dart';
import 'package:twelv/screens/likes/bloc/likes_event.dart';
import 'package:twelv/screens/likes/bloc/likes_model.dart';
import 'package:twelv/screens/likes/bloc/likes_state.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_event.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';

class LikesBloc extends Bloc<LikesEvent, LikesState> {
  final LikesModel model;
  final AnalyticsTracker _analyticsTracker;

  LikesBloc(this.model, this._analyticsTracker) : super(const LikesState.initial());

  late ExplorerBloc explorerBloc;
  late ProfileBloc profileBloc;

  @override
  Stream<LikesState> mapEventToState(LikesEvent event) async* {
    try {
      if (event is LikeActionEvent) {
        final LikeActionEvent swipeEvent = event as LikeActionEvent;
        final SwipeAction swipeAction = SwipeAction(
            toUser: swipeEvent.user.id,
            like: event is Like || event is Superlike,
            superlike: event is Superlike);

        yield const LikesState.loading();

        final SwipeMatch? swipeMatch =
            await model.postSwipeAction(swipeAction, useCredit: swipeEvent.useCredit);
        _analyticsTracker
            .log(EventAnalytics.swipe(swipeAction: swipeAction, likeActionEvent: swipeEvent));

        explorerBloc.add(explorer.ExplorerEvent.skip(id: swipeEvent.user.id));

        if (swipeMatch != null) {
          if (event is Like) {
            yield LikesState.match(swipeMatch, event.user);
          } else if (event is Superlike) {
            yield LikesState.match(swipeMatch, event.user);
          }
        }

        if (swipeEvent.useCredit == true) {
          profileBloc.add(const ProfileEvent.reloadUser());
        }
        if (event is Superlike) {
          yield const LikesState.superliked();
        }

        yield LikesState.fetchedData(await model.getCachedLikesAllUsers());
      } else if (event is ReportProfile) {
        yield const LikesState.loading();
        await model.reportUser(event.user);
        explorerBloc.add(explorer.ExplorerEvent.skip(id: event.user.id));
        yield LikesState.fetchedData(await model.getCachedLikesAllUsers(),
            isAfterReportingProfile: true);
      } else {
        yield const LikesState.loading();
        yield LikesState.fetchedData(await model.getLikesAllUsers());
      }
    } on DioError catch (e) {
      yield LikesState.likesError(e, event);
    }
  }
}
