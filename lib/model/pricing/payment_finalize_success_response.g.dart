// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_finalize_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentFinalizeSuccessResponse _$PaymentFinalizeSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    PaymentFinalizeSuccessResponse(
      json['added_credits'] as int,
      json['has_credits'] as int,
      json['switched_to_premium'] as bool,
      json['plan_ends_at'] == null
          ? null
          : DateTime.parse(json['plan_ends_at'] as String),
    );

Map<String, dynamic> _$PaymentFinalizeSuccessResponseToJson(
        PaymentFinalizeSuccessResponse instance) =>
    <String, dynamic>{
      'added_credits': instance.addedCredits,
      'has_credits': instance.hasCredits,
      'switched_to_premium': instance.switchedToPremium,
      'plan_ends_at': instance.planEndsAt?.toIso8601String(),
    };
