import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event_abstract.dart';

part 'explorer_event.freezed.dart';

@freezed
@immutable
abstract class ExplorerEvent with _$ExplorerEvent {
  const factory ExplorerEvent.fetch() = ExplorerFetchData;

  @Implements()
  const factory ExplorerEvent.like({required Profile user, required bool delay, bool? useCredit}) =
      Like;

  @Implements()
  const factory ExplorerEvent.dislike(
      {required Profile user, required bool delay, bool? useCredit}) = Dislike;

  @Implements()
  const factory ExplorerEvent.superlike(
      {required Profile user, required bool delay, bool? useCredit}) = Superlike;

  const factory ExplorerEvent.reportProfile({required BaseUser user, required bool delay}) =
      ReportProfile;

  const factory ExplorerEvent.filter({required RecommendationsFilters recommendationsFilters}) =
      Filter;

  const factory ExplorerEvent.skip({required int id}) = Skip;
}
