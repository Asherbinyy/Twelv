import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/model/documents/user_consent.dart';
import 'package:twelv/services/analytics/att_service.dart';
import 'package:twelv/services/network/api/user_client.dart';

class SettingsPrivacyModel {
  final UserRestClient _userRestClient;
  final CurrentUserRepository _currentUserRepository;
  final ATTService _attService;

  UserConsent? _settingsPrivacyDto;

  SettingsPrivacyModel(this._userRestClient, this._currentUserRepository, this._attService);

  Future<void> updateCookieConsent(
      {bool? analytics, bool? errorTracking, bool? sensitiveData}) async {
    _settingsPrivacyDto ??= await getSettings();

    if (analytics != null) {
      bool newValue = analytics;
      if (_attService.isRequired && newValue) {
        newValue = await _attService.askForPermission(useAnalitics: true, askAgain: true);
      }
      _settingsPrivacyDto?.analytics = newValue;
    }
    if (errorTracking != null) {
      _settingsPrivacyDto?.errorTracking = errorTracking;
    }
    if (sensitiveData != null) {
      _settingsPrivacyDto?.sensitiveData = sensitiveData;
    }
  }

  Future<UserConsent> getSettings() async {
    if (_settingsPrivacyDto == null) {
      _settingsPrivacyDto = UserConsent.fromCurrentUser(_currentUserRepository.currentUser);
      if (_attService.isRequired) {
        final bool attAuthorized = await _attService.isAuthorized();
        if (!attAuthorized) {
          _settingsPrivacyDto?.analytics = false;
        }
      }
    }
    return UserConsent.fromJson(_settingsPrivacyDto!.toJson());
  }

  Future<void> submit() async {
    final UserConsent userConsent = await getSettings();
    await _userRestClient.postConsent(userConsent);
  }
}
