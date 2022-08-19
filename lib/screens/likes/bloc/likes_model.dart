// ignore_for_file: no-magic-number

import 'package:retrofit/dio.dart';
import 'package:twelv/model/profile/report_profile_request.dart';
import 'package:twelv/model/recommendation/swipe_action.dart';
import 'package:twelv/model/recommendation/swipe_match.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/model/user/profiles.dart';
import 'package:twelv/services/network/users_client.dart';

class LikesModel {
  final UsersRestClient _usersRestClient;
  List<Profile>? _users;

  LikesModel(
    this._usersRestClient,
  );

  Future<List<Profile>> getLikesAllUsers() async {
    if (_users == null) {
      _users = <Profile>[];
    } else {
      _users?.clear();
    }

    final Profiles superlike = await _usersRestClient.getSuperlike();
    for (Profile profile in superlike.data) {
      profile.superliked = true;
    }
    _users?.addAll(superlike.data);

    final Profiles admirers = await _usersRestClient.getAdmirers();
    _users?.addAll(admirers.data);

    return _users!;
  }

  Future<List<Profile>> getCachedLikesAllUsers() async {
    if (_users == null || _users?.isEmpty == true) {
      _users = await getLikesAllUsers();
    }
    final List<Profile> profiles = <Profile>[];
    profiles.addAll(_users!);
    return profiles;
  }

  Future<SwipeMatch?> postSwipeAction(SwipeAction swipeAction, {bool? useCredit}) async {
    //FIX For backend bug
    // https://dev.azure.com/tapptic/Twelv-love-TP-1509/_sprints/taskboard/Twelv-love-TP-1509%20Team/Twelv-love-TP-1509/Sprint%2010?workitem=40481
    final HttpResponse<dynamic> response = useCredit == true
        ? await _usersRestClient.postSwipeAction(swipeAction, useCredit: true)
        : await _usersRestClient.postSwipeActionNoCredit(swipeAction);
    // final HttpResponse<dynamic> response =
    //     await _usersRestClient.postSwipeAction(swipeAction, useCredit: useCredit);

    _removeUser(swipeAction.toUser);

    // ignore: no-magic-number
    if (response.response.statusCode != 204 && response.data is Map<String, dynamic>) {
      return SwipeMatch.fromJson(response.data as Map<String, dynamic>);
    }
    return null;
  }

  Future<void> reportUser(BaseUser user) =>
      _usersRestClient.reportProfile(ReportProfileRequest(userId: user.id));

  void _removeUser(int userId) => _users?.removeWhere((Profile profile) => profile.id == userId);
}
