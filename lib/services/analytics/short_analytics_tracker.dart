import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';

enum ShortAnalyticsEvent { userLogin, userSignup, buySubscription, buyCredit }

extension ShortAnalyticsEventHelper on ShortAnalyticsEvent {
  String get eventName {
    switch (this) {
      case ShortAnalyticsEvent.userLogin:
        return "login";
      case ShortAnalyticsEvent.userSignup:
        return "sign-up";
      case ShortAnalyticsEvent.buyCredit:
        return "Credit purchase";
      case ShortAnalyticsEvent.buySubscription:
        return "Subscription";
    }
  }

  String get eventToken {
    if (DependenciesContainer().get<Environment>() == Environment.prod) {
      switch (this) {
        case ShortAnalyticsEvent.userLogin:
          return "emichy";
        case ShortAnalyticsEvent.userSignup:
          return "hbov8p";
        case ShortAnalyticsEvent.buyCredit:
          return "8o0vf9";
        case ShortAnalyticsEvent.buySubscription:
          return "hs9sw0";
      }
    } else {
      switch (this) {
        case ShortAnalyticsEvent.userLogin:
          return "19aumu";
        case ShortAnalyticsEvent.userSignup:
          return "nzhd39";
        case ShortAnalyticsEvent.buyCredit:
          return "6wixat";
        case ShortAnalyticsEvent.buySubscription:
          return "jy08y5";
      }
    }
  }
}

abstract class ShortAnalyticsTracker {
  void trackEvent(ShortAnalyticsEvent event);

  void trackPurchaseProduct({required String currency, required String amount});

  void trackPurchaseSubscriptionAppStore({
    required String price,
    required String currency,
    required String transactionId,
    required String receipt,
    required String salesRegion,
    required DateTime transactionDate,
  });

  void trackPurchaseSubscriptionPlayStore({
    required String price,
    required String currency,
    required String sku,
    required String orderId,
    required String signature,
    required String purchaseToken,
    required DateTime transactionDate,
  });
}
