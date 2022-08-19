import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/current_user.dart';

part 'profile_event.freezed.dart';

@freezed
@immutable
abstract class ProfileEvent {
  const factory ProfileEvent.addPhoto(File file) = AddPhoto;

  const factory ProfileEvent.delPhoto(int id) = DelPhoto;

  const factory ProfileEvent.updateUser(CurrentUser currentUser) = UpdateUser;

  const factory ProfileEvent.reloadUser() = ReloadUser;

  const factory ProfileEvent.delete() = Delete;
}
