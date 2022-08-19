// ignore_for_file: avoid_setters_without_getters

import 'package:flutter/foundation.dart';

abstract class ErrorTracker {
  Future<void> Function(FlutterErrorDetails flutterErrorDetails) get recordFlutterError;

  Future<void> Function(dynamic exception, StackTrace? stack) get recordError;

  set isEnabled(bool isEnabled);
}
