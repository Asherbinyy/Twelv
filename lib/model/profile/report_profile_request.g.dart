// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportProfileRequest _$ReportProfileRequestFromJson(Map<String, dynamic> json) {
  return ReportProfileRequest(
    userId: json['reported_user'] as int,
  );
}

Map<String, dynamic> _$ReportProfileRequestToJson(
        ReportProfileRequest instance) =>
    <String, dynamic>{
      'reported_user': instance.userId,
    };
