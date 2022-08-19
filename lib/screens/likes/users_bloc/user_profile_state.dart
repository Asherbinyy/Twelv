import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_event.dart';

part 'user_profile_state.freezed.dart';

@freezed
@immutable
abstract class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = Initial;

  const factory UserProfileState.loading() = Loading;

  const factory UserProfileState.fetchedData(Profile profile) = FetchedData;

  const factory UserProfileState.apiError(Exception error, UserProfileEvent event) = ApiError;
}
