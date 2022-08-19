// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swipe_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwipeAction _$SwipeActionFromJson(Map<String, dynamic> json) {
  return SwipeAction(
    toUser: json['to_user'] as int,
    like: json['like'] as bool,
    superlike: json['superlike'] as bool,
  );
}

Map<String, dynamic> _$SwipeActionToJson(SwipeAction instance) =>
    <String, dynamic>{
      'to_user': instance.toUser,
      'like': instance.like,
      'superlike': instance.superlike,
    };
