import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';

class FirebaseMessagingService {
  void startObservingTokenState() {
    FirebaseMessaging.instance.onTokenRefresh.listen((String newToken) {
      _tokenStreamController.add(newToken);
    });
    readCurrentToken();
  }

  Future<String?> readCurrentToken() => FirebaseMessaging.instance.getToken().then((String? token) {
        _tokenStreamController.add(token);
        return token;
      });

  final StreamController<String?> _tokenStreamController = StreamController<String?>();

  Stream<String?> get notificationsTokenStream => _tokenStreamController.stream;

  Future<bool> notificationsPermissionStatus({required bool request}) async {
    final NotificationSettings settings = request
        ? await FirebaseMessaging.instance.requestPermission()
        : await FirebaseMessaging.instance.getNotificationSettings();
    final bool permissionAllowed;
    if (Platform.isAndroid) {
      permissionAllowed = await Permission.notification.isGranted;
    } else {
      permissionAllowed = true;
    }
    return settings.authorizationStatus == AuthorizationStatus.authorized && permissionAllowed;
  }

  Future<String?> tryToGetNotificationsToken() async {
    final bool isPermissionGranted = await notificationsPermissionStatus(request: true);
    return isPermissionGranted ? await readCurrentToken() : null;
  }

  Future<bool> isNotificationsPermissionGranted() async =>
      notificationsPermissionStatus(request: false);

  Future<bool> isNotificationsPermissionDenied() async {
    final bool granted = await isNotificationsPermissionGranted();
    return !granted;
  }
}
