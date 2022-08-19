import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:twelv/generated/l10n.dart';

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
/// Based on: https://pub.dev/packages/geolocator
Future<Position> getGpsPosition(BuildContext? context, {bool requestPermission = true}) async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future<Position>.error(context != null
        ? Str.of(context).locationPermissionDeniedErrorMessage
        : GPSPermissionDeniedException());
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    if (requestPermission) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future<Position>.error(context != null
            ? Str.of(context).locationPermissionDeniedErrorMessage
            : GPSPermissionDeniedException());
      }
    } else {
      return Future<Position>.error(context != null
          ? Str.of(context).locationPermissionDeniedErrorMessage
          : GPSPermissionDeniedException());
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future<Position>.error(context != null
        ? Str.of(context).locationPermissionDeniedErrorMessage
        : GPSPermissionDeniedException());
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return Geolocator.getCurrentPosition();
}

class GPSPermissionDeniedException implements Exception {}

extension PositionHelper on Position {
  static Position get zero => Position(
      latitude: 0,
      longitude: 0,
      timestamp: null,
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0);
}
