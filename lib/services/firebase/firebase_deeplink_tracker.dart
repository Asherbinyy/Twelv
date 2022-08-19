import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/home/home_view.dart';
import 'package:twelv/services/navigation/navigation.dart';

enum FirebaseDeeplinkType { matches, likes, horoscope, explorer }

extension FirebaseDeeplinkHelper on FirebaseDeeplinkType {
  static FirebaseDeeplinkType? from(String screen) {
    switch (screen) {
      case "matches":
        return FirebaseDeeplinkType.matches;
      case "likes":
        return FirebaseDeeplinkType.likes;
      case "horoscope":
        return FirebaseDeeplinkType.horoscope;
      case "explorer":
        return FirebaseDeeplinkType.explorer;
    }
    return null;
  }
}

extension RemoteMessageHelper on RemoteMessage {
  FirebaseDeeplinkType? get deepLink {
    if (data.isNotEmpty && data.keys.contains("screen") && data["screen"] is String) {
      return FirebaseDeeplinkHelper.from(data["screen"] as String);
    }
    return null;
  }
}

class FirebaseDeeplinkTracker {
  FirebaseDeeplinkType? link;

  HomeScreenViewSettings? consumeLink() {
    if (link == null) {
      return null;
    }
    return _navigateToLink();
  }

  bool get redirectionWaiting => _tryGenerateRedirection() != null;

  HomeScreenViewSettings? _viewSettingsGetFromLink() {
    final HomeScreenViewSettings viewSettings = HomeScreenViewSettings(HomePageType.explorer);
    switch (link) {
      case FirebaseDeeplinkType.matches:
        viewSettings.type = HomePageType.matches;
        break;
      case FirebaseDeeplinkType.likes:
        viewSettings.likes = true;
        break;
      case FirebaseDeeplinkType.horoscope:
        viewSettings.type = HomePageType.horoscope;
        break;
      case FirebaseDeeplinkType.explorer:
        viewSettings.type = HomePageType.explorer;
        break;
      case null:
        return null;
    }
    return viewSettings;
  }

  HomeScreenViewSettings? _tryGenerateRedirection() {
    if (link != null && navigator(NavigationService.home).navigatorKey.currentState != null) {
      return _viewSettingsGetFromLink();
    }
    return null;
  }

  void onInitialMessage(RemoteMessage message) {
    link = message.deepLink;
  }

  void onMessageOpenedApp(RemoteMessage message) {
    link = message.deepLink;
    _navigateToLink();
  }

  HomeScreenViewSettings? _navigateToLink() {
    final HomeScreenViewSettings? viewSettings = _viewSettingsGetFromLink();
    if (viewSettings != null) {
      link = null;
      if (navigator(NavigationService.home).isCurrent(route: HomeRoutes.main)) {
        return viewSettings;
      } else {
        navigator(NavigationService.home).popAllAndNavigateTo(HomeRoutes.main, args: viewSettings);
      }
    }
    return null;
  }
}
