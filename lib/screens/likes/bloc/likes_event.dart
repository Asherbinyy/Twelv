import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event_abstract.dart';

part 'likes_event.freezed.dart';

@freezed
@immutable
abstract class LikesEvent with _$LikesEvent {
  const factory LikesEvent.fetch() = FetchData;

  @Implements()
  const factory LikesEvent.like({required Profile user, bool? useCredit}) = Like;

  @Implements()
  const factory LikesEvent.dislike({required Profile user, bool? useCredit}) = Dislike;

  @Implements()
  const factory LikesEvent.superlike({required Profile user, bool? useCredit}) = Superlike;

  const factory LikesEvent.reportProfile({required Profile user}) = ReportProfile;
}
