// ignore_for_file: avoid_setters_without_getters

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:twelv/model/analytics/event_analytics.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';

class FirebaseAnalyticsTracker extends AnalyticsTracker {
  final FirebaseAnalytics _analytics;
  final FirebaseAnalyticsObserver _observer;
  CurrentUser? _currentUser;

  FirebaseAnalyticsTracker(this._analytics, this._observer);

  Future<void> init() => Firebase.initializeApp();

  @override
  set isEnabled(bool isEnabled) {
    _analytics.setAnalyticsCollectionEnabled(isEnabled);
  }

  @override
  Future<void> log(EventAnalytics eventAnalytics) async {
    if (_currentUser != null) {
      eventAnalytics.addMyUser(_currentUser!);
    }
    _analytics.logEvent(name: eventAnalytics.name, parameters: eventAnalytics.parameters);
  }

  @override
  NavigatorObserver get navigationObserver => _observer;

  @override
  List<NavigatorObserver> get navigationObservers => <NavigatorObserver>[_observer];

  @override
  set currentUser(CurrentUser currentUser) => _currentUser = currentUser;
}
