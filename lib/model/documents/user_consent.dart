import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/current_user.dart';

part 'user_consent.g.dart';

@JsonSerializable()
class UserConsent {
  @JsonKey(name: "terms_of_use", includeIfNull: false)
  bool? termsOfUse;

  @JsonKey(name: "sensitive_data", includeIfNull: false)
  bool? sensitiveData;

  @JsonKey(name: "firebase_analytics", includeIfNull: false)
  bool? analytics;

  @JsonKey(name: "firebase_crashlytics", includeIfNull: false)
  bool? errorTracking;

  UserConsent({this.termsOfUse, this.sensitiveData, this.analytics, this.errorTracking});

  factory UserConsent.fromCurrentUser(CurrentUser? currentUser) => UserConsent(
        termsOfUse: currentUser?.consentTermsOfUse,
        sensitiveData: currentUser?.consentSensitiveData,
        analytics: currentUser?.consentFirebaseAnalytics,
        errorTracking: currentUser?.consentFirebaseCrashlytics,
      );

  factory UserConsent.fromJson(Map<String, dynamic> json) => _$UserConsentFromJson(json);

  Map<String, dynamic> toJson() => _$UserConsentToJson(this);
}
