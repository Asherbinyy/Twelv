import 'package:hive/hive.dart';

class LocationPermissionTracker {
  static String boxName = "locationPermissionBox";
  final String keyName = "locationPermissionAsked";

  bool? _isLocationPermissionAlreadyAsked;

  Future<void> init() => Hive.openBox<bool>(boxName).then((Box<bool> box) {
        _isLocationPermissionAlreadyAsked = box.get(keyName);
      });

  bool get isLocationPermissionAlreadyAsked => _isLocationPermissionAlreadyAsked ?? false;

  set isLocationPermissionAlreadyAsked(bool value) {
    _isLocationPermissionAlreadyAsked = value;
    Hive.box<bool>(boxName).put(keyName, value);
  }
}
