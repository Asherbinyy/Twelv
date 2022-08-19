import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings.g.dart';

@JsonSerializable()
class NotificationSettings {
  bool? superlike;
  bool? match;
  bool? horoscope;
  @JsonKey(name: "profile_of_the_day")
  bool? profileOfTheDay;
  bool? messages;

  @JsonKey(ignore: true)
  bool get isEnabled =>
      superlike == true ||
      match == true ||
      horoscope == true ||
      profileOfTheDay == true ||
      messages == true;

  NotificationSettings(
      {this.superlike, this.match, this.horoscope, this.profileOfTheDay, this.messages});

  factory NotificationSettings.clone(NotificationSettings settings) => NotificationSettings(
      superlike: settings.superlike,
      match: settings.match,
      horoscope: settings.horoscope,
      profileOfTheDay: settings.profileOfTheDay,
      messages: settings.messages);

  factory NotificationSettings.allTrue() => NotificationSettings(
      superlike: true, match: true, horoscope: true, profileOfTheDay: true, messages: true);

  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationSettingsToJson(this);
}
