import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/documents/user_consent.dart';

part 'settings_privacy_state.freezed.dart';

@freezed
@immutable
class SettingsPrivacyState with _$SettingsPrivacyState {
  const factory SettingsPrivacyState.loading() = Loading;

  const factory SettingsPrivacyState.apiError(Exception error) = ApiError;

  const factory SettingsPrivacyState.initial() = Initial;

  const factory SettingsPrivacyState.succeeded() = Succeeded;

  const factory SettingsPrivacyState.data(UserConsent data) = Data;
}
