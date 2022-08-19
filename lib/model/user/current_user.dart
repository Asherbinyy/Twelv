import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/file/image_dto.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/chat_user.dart';
import 'package:twelv/model/user/notification_settings.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';

part 'current_user.g.dart';

@JsonSerializable()
class CurrentUser extends BaseUser implements ChatUser {
  @JsonKey(name: "is_premium", defaultValue: false)
  final bool isPremium;
  @JsonKey(defaultValue: false)
  final bool spotlight;
  @JsonKey(name: "is_visible", defaultValue: true)
  final bool isVisible;
  @JsonKey(name: "notification_token")
  String? notificationToken;
  NotificationSettings? notificationSettings;
  @override
  @JsonKey(name: "get_stream_UUID")
  final String? getStreamUUID;
  @JsonKey(name: "get_stream_API_Token")
  final String? getStreamAPIToken;
  @JsonKey(name: "virgil_API_Token")
  final String? virgilApiToken;
  final double? lat;
  final double? lon;
  @JsonKey(name: "is_onboarded")
  final bool? isOnboarded;

  @JsonKey(name: "consent_terms_of_use")
  final bool? consentTermsOfUse;
  @JsonKey(name: "consent_terms_of_use_timestamp")
  final DateTime? consentTermsOfUseTimestamp;
  @JsonKey(name: "consent_sensitive_data")
  bool? consentSensitiveData;
  @JsonKey(name: "consent_firebase_analytics")
  final bool? consentFirebaseAnalytics;
  @JsonKey(name: "consent_firebase_crashlytics")
  final bool? consentFirebaseCrashlytics;
  @JsonKey(name: "consent_firebase_timestamp")
  final DateTime? consentFirebaseTimestamp;

  @JsonKey(name: "subscription_ends_at")
  final DateTime? subscriptionEndsAt;

  @JsonKey(name: "birth_location_lat")
  double? birthLocationLat;

  @JsonKey(name: "birth_location_lon")
  double? birthLocationLon;

  final int credits;

  @JsonKey(ignore: true)
  bool get hasCredits => credits > 0;

  @JsonKey(ignore: true)
  bool get isLocationProvided => lat != 0 && lon != 0;

  @JsonKey(ignore: true)
  bool get isLocationDenied => !isLocationProvided;

  CurrentUser(
      {required int id,
      String? name,
      DateTime? dateTimeOfBirth,
      ZodiacSign? sunSign,
      ZodiacSign? astrologicalSign,
      String? zodiacText,
      Gender? interestedIn,
      Gender? gender,
      String? about,
      List<ImageDto> images = const <ImageDto>[],
      List<ImageDto> blurred = const <ImageDto>[],
      required this.isPremium,
      required this.spotlight,
      required this.isVisible,
      this.notificationToken,
      this.notificationSettings,
      this.getStreamUUID,
      this.getStreamAPIToken,
      this.virgilApiToken,
      this.lat,
      this.lon,
      this.isOnboarded,
      this.consentTermsOfUse,
      this.consentTermsOfUseTimestamp,
      this.consentSensitiveData,
      this.consentFirebaseAnalytics,
      this.consentFirebaseCrashlytics,
      this.consentFirebaseTimestamp,
      this.subscriptionEndsAt,
      this.birthLocationLat,
      this.birthLocationLon,
      this.credits = 0})
      : super(
            id: id,
            name: name,
            dateTimeOfBirth: dateTimeOfBirth,
            sunSign: sunSign,
            astrologicalSign: astrologicalSign,
            zodiacText: zodiacText,
            interestedIn: interestedIn,
            gender: gender,
            about: about,
            images: images,
            blurred: blurred);

  factory CurrentUser.fromJson(Map<String, dynamic> json) => _$CurrentUserFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentUserToJson(this);
}
