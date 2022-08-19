import 'package:flutter/cupertino.dart';
import 'package:twelv/model/user/current_user.dart';

class CurrentUserWidget extends InheritedWidget {
  final CurrentUser currentUser;

  const CurrentUserWidget({required this.currentUser, required Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant CurrentUserWidget oldWidget) =>
      oldWidget.currentUser != currentUser;

  static CurrentUserWidget of(BuildContext context) {
    final CurrentUserWidget? result =
        context.dependOnInheritedWidgetOfExactType<CurrentUserWidget>();
    assert(result != null, 'No CurrentUser found in context');
    return result!;
  }
}
