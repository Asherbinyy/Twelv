import 'dart:io';

import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/user/current_user_response.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';
import 'package:twelv/services/network/api/user_client.dart';

class ProfileModel {
  final FormatterService _formatters;
  final UserRestClient _userRestClient;
  final CurrentUserRepository _currentUserRepository;
  final ErrorTracker _errorTracker;
  final AnalyticsTracker _analyticsTracker;

  ProfileModel(this._userRestClient, this._currentUserRepository, this._formatters,
      this._errorTracker, this._analyticsTracker);

  CurrentUser? get currentUser => _currentUserRepository.currentUser;

  Future<void> addPhoto(File file) async {
    await _userRestClient.updateProfile(images: [file]);
    await reloadUser();
  }

  Future<void> delPhoto(int index) async {
    await _userRestClient.deleteImage(currentUser!.images[index].id);
    await reloadUser();
  }

  Future<void> updateUser(CurrentUser currentUser) async {
    Gender? interestedIn = currentUser.interestedIn;
    if (currentUser.consentSensitiveData == false) {
      interestedIn = null;
    }

    await _userRestClient.updateProfile(
        name: currentUser.name,
        about: currentUser.about,
        dateTimeOfBirth: _formatters.date
            .format(currentUser.dateTimeOfBirth, inFormat: AppDateFormat.birthDateTimeApi),
        latitudeBirth: currentUser.birthLocationLat,
        longitudeBirth: currentUser.birthLocationLon,
        placeOfBirth: currentUser.placeOfBirth,
        gender: currentUser.gender?.apiValue(),
        interestedIn: interestedIn?.apiValue());
    await reloadUser();
  }

  Future<void> reloadUser() async {
    final CurrentUserResponse currentUserResponse = await _userRestClient.getCurrentUser();
    _currentUserRepository.currentUser = currentUserResponse.data;

    _errorTracker.isEnabled = currentUser?.consentFirebaseCrashlytics ?? false;
    _analyticsTracker.isEnabled = currentUser?.consentFirebaseAnalytics ?? false;
  }

  Future<void> deleteUser() => _userRestClient.deleteUser();
}
