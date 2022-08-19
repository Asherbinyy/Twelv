import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/notification_settings.dart';

part 'settings_notifications_state.freezed.dart';

@freezed
@immutable
class SettingsNotificationsState with _$SettingsNotificationsState {
  const factory SettingsNotificationsState.loading() = Loading;

  const factory SettingsNotificationsState.apiError(Exception error) = ApiError;

  const factory SettingsNotificationsState.settings(NotificationSettings notificationSettings) =
      Settings;
}
