import 'package:twelv/model/analytics/event_type.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';
import 'package:twelv/model/recommendation/swipe_action.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/base_user_analytics.dart';
import 'package:twelv/model/user/compatibility.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/user/current_user_analytics.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/model/user/profile_analytics.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event_abstract.dart';

class EventAnalytics {
  final String name;

  final Map<String, Object> parameters;

  EventAnalytics(this.name, this.parameters);

  void addMyUser(CurrentUser currentUser) {
    parameters.addAll(currentUser.getAnalyticsData());
  }

  factory EventAnalytics.swipe(
      {required SwipeAction swipeAction, required LikeActionEvent likeActionEvent}) {
    final EventAnalyticsType type = swipeAction.superlike
        ? EventAnalyticsType.SwipeSuperlike
        : swipeAction.like
            ? EventAnalyticsType.SwipeLike
            : EventAnalyticsType.SwipeDislike;
    return EventAnalytics(
        type.rawValue,
        <String, Object>{"isLike": swipeAction.like}
          ..addAll(likeActionEvent.user.getAnalyticsData()));
  }

  factory EventAnalytics.noProfileScreen(
          {required RecommendationsFilters recommendationsFilters}) =>
      EventAnalytics(EventAnalyticsType.NoProfileScreen.rawValue,
          <String, Object>{"max_position": recommendationsFilters.distance});

  factory EventAnalytics.noAccessPopUp({required NoAccessType type}) => EventAnalytics(
      EventAnalyticsType.NoAccessPopup.rawValue,
      <String, Object>{"no_access_title": type.getAnaliticsTag()});

  factory EventAnalytics.unblockCompatibility(
          {required BaseUser user,
          double? distance,
          bool? isSuperlike,
          Compatibility? compatibility}) =>
      EventAnalytics(
        EventAnalyticsType.Compatibility.rawValue,
        <String, Object>{
          "position": distance.toString(),
          "superlike": isSuperlike.toString(),
        }..addAll(user.getAnalyticsData(compatibility: compatibility)),
      );

  factory EventAnalytics.blurredProfile({required Profile profile}) =>
      EventAnalytics(EventAnalyticsType.BlurredProfile.rawValue, profile.getAnalyticsData());
}
