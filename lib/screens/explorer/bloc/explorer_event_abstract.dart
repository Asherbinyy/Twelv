import 'package:twelv/model/user/profile.dart';

abstract class LikeActionEvent {
  Profile get user;
  bool? get useCredit;
}

abstract class SwipeEvent implements LikeActionEvent {
  bool get delay;
}
