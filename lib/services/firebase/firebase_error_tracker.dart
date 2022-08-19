// ignore_for_file: avoid_setters_without_getters

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:twelv/services/errors/error_tracker.dart';

class FirebaseErrorTracker implements ErrorTracker {
  Future<void> init() => Firebase.initializeApp();

  @override
  Future<void> Function(FlutterErrorDetails flutterErrorDetails) get recordFlutterError =>
      FirebaseCrashlytics.instance.recordFlutterError;

  @override
  Future<void> Function(dynamic exception, StackTrace? stack) get recordError =>
      FirebaseCrashlytics.instance.recordError;

  @override
  set isEnabled(bool isEnabled) {
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(isEnabled);
  }
}
