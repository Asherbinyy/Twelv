// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserConsent _$UserConsentFromJson(Map<String, dynamic> json) => UserConsent(
      termsOfUse: json['terms_of_use'] as bool?,
      sensitiveData: json['sensitive_data'] as bool?,
      analytics: json['firebase_analytics'] as bool?,
      errorTracking: json['firebase_crashlytics'] as bool?,
    );

Map<String, dynamic> _$UserConsentToJson(UserConsent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('terms_of_use', instance.termsOfUse);
  writeNotNull('sensitive_data', instance.sensitiveData);
  writeNotNull('firebase_analytics', instance.analytics);
  writeNotNull('firebase_crashlytics', instance.errorTracking);
  return val;
}
