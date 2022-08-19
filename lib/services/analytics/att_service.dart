import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/services.dart';
import 'package:twelv/di/app_module.dart';

class ATTService {
  Future<bool> askForPermission({required bool useAnalitics, bool askAgain = false}) async {
    if (!useAnalitics) {
      return useAnalitics;
    }
    if (Platform.isIOS) {
      try {
        final TrackingStatus currentStatus =
            await AppTrackingTransparency.trackingAuthorizationStatus;
        if (currentStatus == TrackingStatus.notDetermined) {
          final TrackingStatus newStatus =
              await AppTrackingTransparency.requestTrackingAuthorization();
          return newStatus == TrackingStatus.authorized;
        }
        if (askAgain && currentStatus == TrackingStatus.denied) {
          final TrackingStatus newStatus =
              await AppTrackingTransparency.requestTrackingAuthorization();
          return newStatus == TrackingStatus.authorized;
        } else {
          return currentStatus == TrackingStatus.authorized;
        }
      } on PlatformException catch (e) {
        logger().e(e.message);
        return false;
      }
    }
    return true;
  }

  bool get isRequired => Platform.isIOS;

  bool get isNotRequired => !isRequired;

  Future<bool> isAuthorized() async {
    if (isRequired) {
      final TrackingStatus currentStatus =
          await AppTrackingTransparency.trackingAuthorizationStatus;
      return currentStatus == TrackingStatus.authorized;
    } else {
      return false;
    }
  }
}
