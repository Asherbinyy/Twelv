import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/recommendation/swipe_match.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/likes/bloc/likes_event.dart';

part 'likes_state.freezed.dart';

@freezed
@immutable
abstract class LikesState with _$LikesState {
  const factory LikesState.initial() = Initial;

  const factory LikesState.loading() = Loading;

  const factory LikesState.fetchedData(List<Profile> users,
      {@Default(false) bool isAfterReportingProfile}) = FetchedData;

  const factory LikesState.likesError(Exception error, LikesEvent event) = LikesError;

  const factory LikesState.match(SwipeMatch swipeMatch, BaseUser userRecommended) = Match;

  const factory LikesState.superliked() = Superliked;
}
