// ignore_for_file: avoid_setters_without_getters

import 'package:flutter/material.dart';
import 'package:twelv/model/analytics/event_analytics.dart';
import 'package:twelv/model/user/current_user.dart';

abstract class AnalyticsTracker {
  set isEnabled(bool isEnabled);
  set currentUser(CurrentUser currentUser);

  NavigatorObserver get navigationObserver;
  List<NavigatorObserver> get navigationObservers;
  Future<void> log(EventAnalytics eventAnalytics);
}
