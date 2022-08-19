import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_privacy_event.freezed.dart';

@freezed
@immutable
abstract class SettingsPrivacyEvent with _$SettingsPrivacyEvent {
  const factory SettingsPrivacyEvent.check() = Check;

  const factory SettingsPrivacyEvent.update(
      {bool? analytics, bool? errorTracking, bool? sensitiveData}) = Update;

  const factory SettingsPrivacyEvent.submit() = Submit;
}
