import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/notification_settings.dart';

part 'settings_notifications_event.freezed.dart';

@freezed
@immutable
abstract class SettingsNotificationsEvent with _$SettingsNotificationsEvent {
  const factory SettingsNotificationsEvent.initial() = Initial;

  const factory SettingsNotificationsEvent.update(
      {required NotificationSettings notificationSettings}) = Update;
}
