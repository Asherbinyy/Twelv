import 'package:flutter/material.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/services/navigation/navigation.dart';

class OnboardingViewNavigationParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Stream<bool>.fromFuture(
          navigator(NavigationService.onboarding).pop(),
        ).map((bool canPop) => !canPop).first;
      },
      child: Navigator(
        key: navigator(NavigationService.onboarding).navigatorKey,
        initialRoute: OnboardingRoutes.name,
        onGenerateRoute: generateOnboardingRoute,
      ),
    );
  }
}
