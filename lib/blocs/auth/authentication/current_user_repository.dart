import 'package:twelv/model/user/current_user.dart';

class CurrentUserRepository {
  CurrentUser? currentUser;

  void clear() => currentUser = null;
}
