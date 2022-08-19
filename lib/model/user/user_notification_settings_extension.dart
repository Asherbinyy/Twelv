import 'package:twelv/model/user/notification_settings.dart';

extension Equal on NotificationSettings {
  bool equal(NotificationSettings settings) =>
      settings.superlike == superlike &&
      settings.match == match &&
      settings.horoscope == horoscope &&
      settings.profileOfTheDay == profileOfTheDay &&
      settings.messages == messages;

  bool notEqual(NotificationSettings settings) => !equal(settings);

  bool get isEnabled =>
      superlike == true ||
      match == true ||
      horoscope == true ||
      profileOfTheDay == true ||
      messages == true;
}
