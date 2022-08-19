import 'package:adjust_sdk/adjust_config.dart';
import 'package:logger/logger.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as GetStream;

enum Environment { dev, staging, hotfix, release, preprod, prod }

extension EnvConfig on Environment {
  bool get canLogHttp => this != Environment.prod;

  Level get logLevel => this != Environment.prod ? Level.verbose : Level.nothing;

  String get apiBaseUrl {
    switch (this) {
      case Environment.prod:
        return "https://api.twelv.love/api";
      default:
        return "https://api.staging.twelv.tapptic.net/api";
    }
  }

  List<String> get availablePhoneNumPrefixes {
    switch (this) {
      case Environment.prod:
        return <String>["+33"];
      default:
        return <String>["+32", "+33", "+36", "+48"];
    }
  }

  String get adjustAppToken => this == Environment.prod ? "ojq47uvz1vr4" : "cavqfegz3pc0";

  AdjustEnvironment get adjustEnvironment =>
      this == Environment.prod ? AdjustEnvironment.production : AdjustEnvironment.sandbox;

  String get googlePlacesApiKey => "AIzaSyC9aJ8RxNkcQ8H1nYn9JVXDUbv7GvWAH98";

  // region Chat
  String get chatApiKey {
    switch (this) {
      case Environment.prod:
        return "xkuyu84nm3uj";
      case Environment.hotfix:
      case Environment.release:
        return "gumbwqaz8fty";
      default:
        return "9kh4sqzxghs9";
    }
  }

  GetStream.Level get chatLogLevel =>
      this == Environment.prod ? GetStream.Level.OFF : GetStream.Level.SEVERE;

// endregion

// region In-app purchase

  Set<String> get inAppPurchaseSubscriptionProductIds => <String>{
        "twelv.love.subscriptionautoone",
        "twelv.love.subscriptionautotwo",
        "twelv.love.subscriptionautothree",
        "twelv.love.subscriptionautofour",
      };

  Set<String> get inAppPurchaseCreditProductIds => <String>{
        "twelv.love.creditone",
        "twelv.love.credittwo",
        "twelv.love.creditthree",
        "twelv.love.creditfour"
      };

// endregion
}
