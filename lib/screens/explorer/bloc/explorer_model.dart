// ignore_for_file: no-magic-number

import 'package:retrofit/dio.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/model/profile/report_profile_request.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';
import 'package:twelv/model/recommendation/swipe_action.dart';
import 'package:twelv/model/recommendation/swipe_match.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/model/user/profiles.dart';
import 'package:twelv/screens/explorer/bloc/recommendations_filter_repository.dart';
import 'package:twelv/services/network/users_client.dart';

class ExplorerModel {
  final UsersRestClient _usersRestClient;
  final RecommendationsFilterRepository _recommendationsFilterRepository;
  final CurrentUserRepository _currentUserRepository;
  Profiles? _recommendations;

  ExplorerModel({
    required UsersRestClient usersRestClient,
    required RecommendationsFilterRepository recommendationsFilterRepository,
    required CurrentUserRepository currentUserRepository,
  })  : _usersRestClient = usersRestClient,
        _recommendationsFilterRepository = recommendationsFilterRepository,
        _currentUserRepository = currentUserRepository;

  bool get isLocationMissing => _currentUserRepository.currentUser?.isLocationDenied == true;

  // region Recommendations

  Future<Profiles> getUsersRecommendations() async {
    final RecommendationsFilters filters = await loadFilters();
    _recommendations = await _usersRestClient.getUsersRecommendations(
        filters.ageMin, filters.ageMax, filters.distance);
    try {
      final HttpResponse<dynamic> profileResponse = await _usersRestClient.getProfileOfDay();
      //ignore: no-magic-number
      if (profileResponse.response.statusCode == 200) {
        final Profile profileOfDay =
            Profile.fromJson(profileResponse.data["data"] as Map<String, dynamic>);
        profileOfDay.isProfileOfDay = true;
        final List<Profile> data = <Profile>[profileOfDay];
        data.addAll(_recommendations!.data);
        _recommendations = Profiles(data);
      }
    } catch (e) {
      logger().e("Failed to get Profile Of Day", e);
    }
    return _recommendations!;
  }

  Future<Profiles> getCachedUsersRecommendations() async {
    if (_recommendations == null ||
        _recommendations?.data.isEmpty == true ||
        _recommendations?.data.length == 1) {
      final RecommendationsFilters filters = await loadFilters();

      _recommendations = await _usersRestClient.getUsersRecommendations(
          filters.ageMin, filters.ageMax, filters.distance);
    }
    _recommendations = Profiles(_recommendations!.data);
    return _recommendations!;
  }

  // endregion

  // region Filters

  Future<RecommendationsFilters> loadFilters() async {
    if (_recommendationsFilterRepository.recommendationsFilters != null) {
      return _recommendationsFilterRepository.recommendationsFilters!;
    }

    RecommendationsFilters? recommendationsFilters;
    try {
      recommendationsFilters = await _usersRestClient.getFilters();
    } catch (e) {
      logger().e("Failed to get filters", e);
    }

    recommendationsFilters ??= RecommendationsFilters.fromUser(_currentUserRepository.currentUser);
    _recommendationsFilterRepository.recommendationsFilters = recommendationsFilters;
    return _recommendationsFilterRepository.recommendationsFilters!;
  }

  RecommendationsFilters get filters => _recommendationsFilterRepository.recommendationsFilters!;

  set filters(RecommendationsFilters recommendationsFilters) =>
      _recommendationsFilterRepository.recommendationsFilters = recommendationsFilters;

  // endregion

  // region Actions

  Future<SwipeMatch?> postSwipeAction(SwipeAction swipeAction, {bool? useCredit}) async {
    final HttpResponse<dynamic> response =
        await _usersRestClient.postSwipeAction(swipeAction, useCredit: useCredit ?? false);

    _removeUser(swipeAction.toUser);

    if (response.response.statusCode != 204 && response.data is Map<String, dynamic>) {
      return SwipeMatch.fromJson(response.data as Map<String, dynamic>);
    }

    return null;
  }

  Future<void> reportUser(BaseUser user) async {
    await _usersRestClient.reportProfile(ReportProfileRequest(userId: user.id));
    _removeUser(user.id);
  }

  Profiles removeCachedUser(int userId) {
    _removeUser(userId);
    _recommendations = Profiles(_recommendations!.data);
    return _recommendations!;
  }

  void _removeUser(int userId) =>
      _recommendations?.data.removeWhere((Profile profile) => profile.id == userId);

// endregion
}
