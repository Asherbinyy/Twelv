import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_event.freezed.dart';

@freezed
@immutable
abstract class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.fetch({required int userId, bool? useCredit}) = Fetch;
}
