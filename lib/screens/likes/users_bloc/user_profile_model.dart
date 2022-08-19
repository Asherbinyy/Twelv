import 'package:twelv/model/user/profile_data.dart';
import 'package:twelv/services/network/api/user_client.dart';

class UserProfileModel {
  final UserRestClient _userRestClient;

  UserProfileModel(this._userRestClient);

  Future<ProfileData> getProfile({required int userId, required bool useCredit}) =>
      _userRestClient.getUser(userId, useCredit ? "true" : "false");
}
