enum EventAnalyticsType {
  SwipeLike,
  SwipeDislike,
  SwipeSuperlike,
  NoProfileScreen,
  NoAccessPopup,
  Compatibility,
  BlurredProfile
}

extension EventTypeHelper on EventAnalyticsType {
  String get rawValue {
    switch (this) {
      case EventAnalyticsType.SwipeLike:
      case EventAnalyticsType.SwipeDislike:
        return "swipe";
      case EventAnalyticsType.SwipeSuperlike:
        return "superlike";
      case EventAnalyticsType.NoProfileScreen:
        return "noprofile_screen";
      case EventAnalyticsType.NoAccessPopup:
        return "no_access_popup";
      case EventAnalyticsType.Compatibility:
        return "compatibility";
      case EventAnalyticsType.BlurredProfile:
        return "blurred_profile";
    }
  }
}
