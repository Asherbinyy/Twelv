import 'package:flutter/material.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/services/navigation/navigation.dart';

class LoginViewNavigationParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Stream<bool>.fromFuture(
          navigator(NavigationService.login).pop(),
        ).map((bool canPop) => !canPop).first;
      },
      child: Navigator(
        key: navigator(NavigationService.login).navigatorKey,
        initialRoute: LoginRoutes.welcome,
        onGenerateRoute: generateLoginRoute,
        observers: <NavigatorObserver>[navigator(NavigationService.login)],
      ),
    );
  }
}
