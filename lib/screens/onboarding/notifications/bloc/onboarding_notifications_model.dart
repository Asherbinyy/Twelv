import 'package:twelv/services/firebase/firebase_messaging.dart';

class OnboardingNotificationsModel {
  final FirebaseMessagingService _firebaseMessagingService;

  OnboardingNotificationsModel(this._firebaseMessagingService);

  Future<String?> tryToGetNotificationsToken() async =>
      _firebaseMessagingService.tryToGetNotificationsToken();
}
