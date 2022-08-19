import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/model/profile/finish_onboarding_request.dart';
import 'package:twelv/model/profile/onboarding_birth_data_request.dart';
import 'package:twelv/model/user/current_user_response.dart';
import 'package:twelv/model/user/notification_settings.dart';
import 'package:twelv/model/zodiac/zodiac_response.dart';
import 'package:twelv/services/network/api/user_client.dart';

class OnboardingModel {
  final UserRestClient _userRestClient;
  final CurrentUserRepository _currentUserRepository;

  OnboardingModel(this._userRestClient, this._currentUserRepository);

  Future<void> updateProfile(OnboardingBirthDataRequest request) => _userRestClient.updateProfile(
      name: request.name,
      dateTimeOfBirth: request.dateTimeOfBirth,
      latitudeBirth: request.latitudeBirth,
      longitudeBirth: request.longitudeBirth,
      placeOfBirth: request.placeOfBirth);

  Future<ZodiacResponse> getZodiac() => _userRestClient.getZodiac();

  Future<void> finishOnboarding(FinishOnboardingRequest request) async {
    await _userRestClient.updateProfile(
        gender: request.genderJson,
        interestedIn: request.interestedInJson,
        about: request.description?.isEmpty == true ? null : request.description,
        lat: request.lat,
        lon: request.lon,
        notificationsToken: request.notificationsToken,
        isOnboarded: request.isOnboarded,
        images: request.images!);

    if (request.notificationsToken != null) {
      await _userRestClient.updateNotifications(NotificationSettings.allTrue());
    }

    final CurrentUserResponse response = await _userRestClient.getCurrentUser();
    _currentUserRepository.currentUser = response.data;
  }
}
