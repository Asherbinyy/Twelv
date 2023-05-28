// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentUserResponse _$CurrentUserResponseFromJson(Map<String, dynamic> json) =>
    CurrentUserResponse(
      CurrentUser.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentUserResponseToJson(
        CurrentUserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
