import 'dart:async';

import 'package:flutter/material.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/home/home_view.dart';
import 'package:twelv/services/navigation/navigation.dart';

class HomeViewNavigationParent extends StatelessWidget {
  final HomeScreenViewSettings? viewSettings;

  const HomeViewNavigationParent({Key? key, this.viewSettings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Stream<bool>.fromFuture(
          navigator(NavigationService.home).pop(),
        ).map((bool canPop) => !canPop).first;
      },
      child: Navigator(
        key: navigator(NavigationService.home).navigatorKey,
        initialRoute: HomeRoutes.main,
        onGenerateRoute: (RouteSettings routeSettings) {
          RouteSettings newSettings = routeSettings;
          if (viewSettings != null) {
            newSettings = RouteSettings(name: routeSettings.name, arguments: viewSettings);
          }
          return generateHomeRoute(newSettings);
        },
      ),
    );
  }
}
