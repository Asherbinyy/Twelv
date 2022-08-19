import 'package:flutter/widgets.dart';

class NavigationService extends NavigatorObserver {
  static const String root = "root";
  static const String login = "login";
  static const String onboarding = "onboarding";
  static const String home = "home";

  NavigationService(this.navigatorKey);

  String? _currentRoute;

  final GlobalKey<NavigatorState> navigatorKey;

  bool isCurrent({required String route}) => _currentRoute == route;

  Future<dynamic> navigateTo<T>(String route, {T? args}) =>
      navigatorKey.currentState?.pushNamed(route, arguments: args) ?? Future<dynamic>.value();

  /// This method will work properly only if [NavigationService] is registered as [NavigatorObserver] in a [Navigator]
  Future<dynamic> navigateToIfNotCurrent<T>(String route, {T? args}) => isCurrent(route: route)
      ? Future<dynamic>.value()
      : navigatorKey.currentState?.pushNamed(route, arguments: args) ?? Future<dynamic>.value();

  Future<dynamic> replaceTo(String route) =>
      navigatorKey.currentState?.pushReplacementNamed(route) ?? Future<dynamic>.value();

  void popUntil(String routeName) => navigatorKey.currentState
      ?.popUntil((Route<dynamic> route) => route.settings.name == routeName);

  Future<T?> popAllAndNavigateTo<T extends Object>(String route, {Object? args}) =>
      navigatorKey.currentState?.pushNamedAndRemoveUntil(
        route,
        (_) => false,
        arguments: args,
      ) ??
      Future<T?>.value();

  Future<bool> pop<T>([T? result]) =>
      navigatorKey.currentState?.maybePop(result) ?? Future<bool>.value();

// region NavigatorObserver

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _currentRoute = previousRoute?.settings.name ?? previousRoute?.toString();
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _currentRoute = route.settings.name ?? route.toString();
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (oldRoute?.isCurrent == true) {
      _currentRoute = newRoute?.settings.name ?? newRoute?.toString();
    }
  }

// endregion
}
