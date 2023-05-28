// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSettings _$NotificationSettingsFromJson(
        Map<String, dynamic> json) =>
    NotificationSettings(
      superlike: json['superlike'] as bool?,
      match: json['match'] as bool?,
      horoscope: json['horoscope'] as bool?,
      profileOfTheDay: json['profile_of_the_day'] as bool?,
      messages: json['messages'] as bool?,
    );

Map<String, dynamic> _$NotificationSettingsToJson(
        NotificationSettings instance) =>
    <String, dynamic>{
      'superlike': instance.superlike,
      'match': instance.match,
      'horoscope': instance.horoscope,
      'profile_of_the_day': instance.profileOfTheDay,
      'messages': instance.messages,
    };
