import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_app_store_subscription.dart';
import 'package:adjust_sdk/adjust_event.dart';
import 'package:adjust_sdk/adjust_play_store_subscription.dart';
import 'package:twelv/services/analytics/short_analytics_tracker.dart';

class AdjustTracker extends ShortAnalyticsTracker {
  @override
  void trackEvent(ShortAnalyticsEvent event) => Adjust.trackEvent(AdjustEvent(event.eventToken));

  @override
  void trackPurchaseProduct({required String currency, required String amount}) {
    final AdjustEvent adjustEvent = AdjustEvent(ShortAnalyticsEvent.buyCredit.eventToken);
    adjustEvent.setRevenue(double.parse(amount), currency);
    Adjust.trackEvent(adjustEvent);
  }

  @override
  void trackPurchaseSubscriptionAppStore(
      {required String price,
      required String currency,
      required String transactionId,
      required String receipt,
      required String salesRegion,
      required DateTime transactionDate}) {
    final AdjustAppStoreSubscription subscription =
        AdjustAppStoreSubscription(price, currency, transactionId, receipt);
    subscription.setTransactionDate(transactionDate.toIso8601String());
    subscription.setSalesRegion(salesRegion);

    Adjust.trackAppStoreSubscription(subscription);
    trackEvent(ShortAnalyticsEvent.buySubscription);
  }

  @override
  void trackPurchaseSubscriptionPlayStore(
      {required String price,
      required String currency,
      required String sku,
      required String orderId,
      required String signature,
      required String purchaseToken,
      required DateTime transactionDate}) {
    final AdjustPlayStoreSubscription subscription =
        AdjustPlayStoreSubscription(price, currency, sku, orderId, signature, purchaseToken);
    subscription.setPurchaseTime(transactionDate.toIso8601String());

    Adjust.trackPlayStoreSubscription(subscription);
    trackEvent(ShortAnalyticsEvent.buySubscription);
  }
}
