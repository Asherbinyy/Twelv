import 'dart:async';

import 'package:flutter_inapp_purchase/flutter_inapp_purchase.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';
import 'package:twelv/services/iap/model/in_app_purchase_response.dart';

abstract class InAppPurchaseService {
  Stream<InAppPurchaseResponse?> get transactionUpdateStream;

  Future<void> connect();

  Future<void> disconnect();

  void start();

  void close();

  Future<List<InAppPurchaseItem>> loadProducts(Set<String> productIds);

  Future<List<InAppPurchaseItem>> loadSubscriptions(Set<String> productIds);

  Future<void> startPurchaseTransaction(InAppPurchaseItem item);

  Future<String?> finishTransaction({
    required bool isConsumable,
    PurchasedItem? item,
  });

  Future<int> checkConsume();

  Future<List<PurchasedItem>> getPurchasedWaiting();
}
