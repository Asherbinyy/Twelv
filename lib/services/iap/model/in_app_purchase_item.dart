import 'package:flutter_inapp_purchase/flutter_inapp_purchase.dart';

enum IAPType { product, subscription }

abstract class InAppPurchaseItem {
  final String productId;
  final String? price;
  final String? currency;
  final String? localizedPrice;
  final String? title;
  final String? description;
  final String? introductoryPrice;
  final String? iconUrl;
  final String originalPrice;

  InAppPurchaseItem(
      {required this.productId,
      required this.price,
      required this.currency,
      required this.localizedPrice,
      required this.title,
      required this.description,
      required this.introductoryPrice,
      required this.iconUrl,
      required this.originalPrice});
}

class InAppPurchaseProduct extends InAppPurchaseItem {
  InAppPurchaseProduct({required IAPItem iapItem})
      : super(
          productId: iapItem.productId!,
          price: iapItem.price,
          currency: iapItem.currency,
          localizedPrice: iapItem.localizedPrice,
          title: iapItem.title,
          description: iapItem.description,
          introductoryPrice: iapItem.introductoryPrice,
          iconUrl: iapItem.iconUrl,
          originalPrice: iapItem.originalPrice,
        );
}

class InAppPurchaseSubscription extends InAppPurchaseItem {
  InAppPurchaseSubscription({required IAPItem iapItem})
      : super(
            productId: iapItem.productId!,
            price: iapItem.price,
            currency: iapItem.currency,
            localizedPrice: iapItem.localizedPrice,
            title: iapItem.title,
            description: iapItem.description,
            introductoryPrice: iapItem.introductoryPrice,
            iconUrl: iapItem.iconUrl,
            originalPrice: iapItem.originalPrice);
}
