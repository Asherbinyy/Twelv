import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/recommendation/swipe_match.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/profiles.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';

part 'explorer_state.freezed.dart';

@freezed
@immutable
class ExplorerState with _$ExplorerState {
  const factory ExplorerState.initial() = Initial;

  const factory ExplorerState.loading({required bool delay}) = Loading;

  const factory ExplorerState.explorerError(Exception error, ExplorerEvent event) = ExplorerError;

  const factory ExplorerState.fetchedData(Profiles userRecommendations,
      {@Default(false) bool isAfterReportingProfile}) = FetchedData;

  const factory ExplorerState.match(SwipeMatch swipeMatch, BaseUser userRecommended) = Match;

  const factory ExplorerState.superliked() = Superliked;

  const factory ExplorerState.noLocation() = NoLocation;
}
