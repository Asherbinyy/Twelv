// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenResponse _$AccessTokenResponseFromJson(Map<String, dynamic> json) =>
    AccessTokenResponse(
      accessToken: json['access_token'] as String,
      isOnboarded: json['is_onboarded'] as bool,
    );

Map<String, dynamic> _$AccessTokenResponseToJson(
        AccessTokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'is_onboarded': instance.isOnboarded,
    };
