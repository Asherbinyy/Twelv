import 'package:app_settings/app_settings.dart';
import 'package:geolocator/geolocator.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/services/analytics/location_permission_tracker.dart';
import 'package:twelv/services/location/gps_position.dart';
import 'package:twelv/services/network/api/user_client.dart';

class LocationModel {
  final UserRestClient _userRestClient;
  final LocationPermissionTracker _permissionTracker;

  LocationModel(this._userRestClient, this._permissionTracker);

  Future<void> updateLocation({required bool askAgainOrOpenSettings}) async {
    final bool needToAsk = !_permissionTracker.isLocationPermissionAlreadyAsked;
    _permissionTracker.isLocationPermissionAlreadyAsked = true;
    try {
      final Position position =
          await getGpsPosition(null, requestPermission: askAgainOrOpenSettings || needToAsk);
      await _userRestClient.updateProfile(lat: position.latitude, lon: position.longitude);
    } on GPSPermissionDeniedException catch (_) {
      if (askAgainOrOpenSettings) {
        AppSettings.openAppSettings();
      }
    } catch (e) {
      logger().e(e);
    }
  }
}
