import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/current_user.dart';

part 'profile_state.freezed.dart';

abstract class ProfileCurrentUserState {
  CurrentUser get user;
}

@freezed
@immutable
class ProfileState with _$ProfileState {
  @Implements()
  const factory ProfileState.initial({required CurrentUser user}) = Initial;

  @Implements()
  const factory ProfileState.user({required CurrentUser user}) = User;

  const factory ProfileState.loading() = Loading;

  const factory ProfileState.error({required Exception error}) = Error;
}
