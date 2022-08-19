import 'package:stream_chat/src/core/api/stream_chat_api.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/model/user/notification_settings.dart';
import 'package:twelv/model/user/user_notification_settings_extension.dart';
import 'package:twelv/services/firebase/firebase_messaging.dart';
import 'package:twelv/services/network/api/user_client.dart';

class SettingsNotificationsModel {
  final UserRestClient _userRestClient;
  final FirebaseMessagingService _firebaseMessagingService;
  final StreamChatClient _chatClient;
  final CurrentUserRepository? _currentUserRepository;
  NotificationSettings? _settings;

  SettingsNotificationsModel(
      {required UserRestClient userRestClient,
      required FirebaseMessagingService firebaseMessagingService,
      required CurrentUserRepository? currentUserRepository,
      required StreamChatClient chatClient})
      : _userRestClient = userRestClient,
        _firebaseMessagingService = firebaseMessagingService,
        _chatClient = chatClient,
        _currentUserRepository = currentUserRepository;

  // region ApiToken settings

  Future<NotificationSettings> get settings async {
    final ListDevicesResponse responseDevices = await _chatClient.getDevices();
    final bool messages = responseDevices.devices.isNotEmpty;

    if (_currentUserRepository?.currentUser?.notificationSettings != null) {
      _settings = _currentUserRepository!.currentUser!.notificationSettings;
      _settings?.messages = messages;
    }
    return _settings ??= NotificationSettings.allTrue();
  }

  Future<void> updateSettings(NotificationSettings updatedSettings) async {
    _settings ??= await settings;

    if (_settings!.notEqual(updatedSettings)) {
      await _userRestClient.updateNotifications(updatedSettings);
    }

    //Only check for permission, not ask
    final bool deviceDisabled = await _firebaseMessagingService.isNotificationsPermissionDenied();
    String? token;

    //Ask for permission only if on new settings something is enabled
    if (updatedSettings.isEnabled) {
      token = await _firebaseMessagingService.tryToGetNotificationsToken();
    }

    //Update token in api only if user did changed permission from denied to granted
    final bool userChangedPermissionGranted = deviceDisabled && token != null;
    if (userChangedPermissionGranted) {
      await updateNotificationToken(token);
      _currentUserRepository?.currentUser?.notificationToken = token;
    }

    if (_settings!.messages != updatedSettings.messages) {
      final ListDevicesResponse responseDevices = await _chatClient.getDevices();

      if (updatedSettings.messages == true && token != null) {
        if (responseDevices.devices.where((Device d) => d.id == token).isEmpty) {
          await _chatClient.addDevice(token, PushProvider.firebase);
        }
      } else if (updatedSettings.messages == false) {
        for (final Device device in responseDevices.devices) {
          await _chatClient.removeDevice(device.id);
        }
      } else {
        logger().d("Messages are ${updatedSettings.messages}, but token is $token");
      }
    }

    _currentUserRepository?.currentUser?.notificationSettings = updatedSettings;
    _settings = updatedSettings;
  }

  // endregion

  // region Device token

  Future<void> updateNotificationToken(String token) async =>
      _userRestClient.updateProfile(notificationsToken: token);

  // endregion
}
