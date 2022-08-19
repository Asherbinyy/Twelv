import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter_inapp_purchase/flutter_inapp_purchase.dart';
import 'package:retrofit/dio.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/model/pricing/payment_finalize_consumed.dart';
import 'package:twelv/model/pricing/payment_finalize_request.dart';
import 'package:twelv/model/pricing/payment_finalize_success_response.dart';
import 'package:twelv/services/iap/in_app_purchase_service.dart';
import 'package:twelv/services/iap/model/in_app_purchase_error.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';
import 'package:twelv/services/iap/model/in_app_purchase_response.dart';
import 'package:twelv/services/network/api/payment_client.dart';

class PaymentBackendError implements Exception {}

class IAPModel {
  final InAppPurchaseService inAppPurchaseService;
  final Environment _environment;
  final PaymentRestClient _client;
  IAPType _type = IAPType.product;

  IAPModel(this.inAppPurchaseService, this._environment, this._client);

  Future<List<InAppPurchaseItem>> getProducts(IAPType type) async {
    await inAppPurchaseService.connect();
    final Set<String> productIds = type == IAPType.product
        ? _environment.inAppPurchaseCreditProductIds
        : _environment.inAppPurchaseSubscriptionProductIds;
    final List<InAppPurchaseItem> products;
    switch (type) {
      case IAPType.product:
        products = await inAppPurchaseService.loadProducts(productIds);
        break;
      case IAPType.subscription:
        products = await inAppPurchaseService.loadSubscriptions(productIds);
        break;
    }
    await inAppPurchaseService.disconnect();
    _type = type;
    return products;
  }

  Future<List<InAppPurchaseItem>> getRefreshProducts() => getProducts(_type);

  Future<void> buyProduct(String productId) async {
    logger().d("IAP Buy product $productId ...");

    if (!_environment.inAppPurchaseCreditProductIds.contains(productId) &&
        !_environment.inAppPurchaseSubscriptionProductIds.contains(productId)) {
      final String errorMessage =
          "Given productId from Backoffice $productId is not in environment";
      throw InAppPurchaseError(
          responseCode: InAppPurchaseErrorCode.transactionFailed, message: errorMessage);
    }

    try {
      await inAppPurchaseService.connect();
      final List<InAppPurchaseItem> products =
          _environment.inAppPurchaseSubscriptionProductIds.contains(productId)
              ? await inAppPurchaseService.loadSubscriptions(<String>{productId})
              : await inAppPurchaseService.loadProducts(<String>{productId});
      final InAppPurchaseItem? item =
          products.firstWhereOrNull((InAppPurchaseItem element) => element.productId == productId);
      if (item == null) {
        final String productsString = products.isNotEmpty
            ? products
                .map((InAppPurchaseItem e) => e.productId)
                .reduce((String value, String element) => value += ", ${element}")
            : "zero fetched products";
        final String errorMessage = "IAPModel buyProduct($productId) "
            "not found product $productId "
            "isSubscriptions: ${_environment.inAppPurchaseSubscriptionProductIds.contains(productId)} "
            "in $productsString";
        logger().e(errorMessage);

        throw InAppPurchaseError(
            responseCode: InAppPurchaseErrorCode.transactionFailed, message: errorMessage);
      } else {
        await inAppPurchaseService.startPurchaseTransaction(item);
      }
    } on Exception catch (e) {
      logger().e(e);
      rethrow;
    }
  }

  Future<int> checkAndConsume() async {
    await inAppPurchaseService.connect();
    final List<PurchasedItem> purchases = await inAppPurchaseService.getPurchasedWaiting();
    int _consumed = 0;

    for (final PurchasedItem item in purchases) {
      try {
        final bool paymentAdded = await finishPurchaseWaiting(item);
        if (paymentAdded) {
          _consumed += 1;
        }
      } catch (e) {
        logger().e(e);
      }
    }
    return _consumed;
  }

  Future<dynamic> finishPurchase(InAppPurchaseResponse response) async {
    final bool isProduct = _environment.inAppPurchaseCreditProductIds.contains(response.productId);
    final PaymentFinalizeRequest? request = response.paymentFinalizeRequest;
    if (request == null) {
      logger().e("Failed generate PaymentFinalizeRequest in finish purchase", response);
      return null;
    }
    final dynamic backendResponse = await _notifyBackend(paymentFinalizeRequest: request);
    await inAppPurchaseService.finishTransaction(isConsumable: isProduct);
    return backendResponse;
  }

  //Return true, if payment was not consumed
  Future<bool> finishPurchaseWaiting(PurchasedItem item) async {
    final bool isProduct = _environment.inAppPurchaseCreditProductIds.contains(item.productId);

    final PaymentFinalizeRequest? paymentFinalizeRequest = PaymentFinalizeRequest.fromPurchasedItem(
        item,
        isAndroid: Platform.isAndroid,
        isProduct: isProduct);
    if (paymentFinalizeRequest == null) {
      logger().e("finishPurchaseWaiting failed generate backend request", item);
      return false;
    }
    final dynamic backendResponse =
        await _notifyBackend(paymentFinalizeRequest: paymentFinalizeRequest);
    await inAppPurchaseService.finishTransaction(item: item, isConsumable: isProduct);
    return backendResponse is PaymentFinalizeSuccessResponse;
  }

  Future<dynamic> _notifyBackend({required PaymentFinalizeRequest paymentFinalizeRequest}) async {
    final HttpResponse<dynamic> response = await _client.finalizePayment(paymentFinalizeRequest);

    if (response.data is! Map<String, dynamic>) {
      throw PaymentBackendError();
    }

    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    // ignore: no-magic-number
    if (response.response.statusCode == 200 && data is Map<String, dynamic>) {
      return PaymentFinalizeSuccessResponse.fromJson(data["data"] as Map<String, dynamic>);
      // ignore: no-magic-number
    } else if (response.response.statusCode == 202 && data is Map<String, dynamic>) {
      return PaymentFinalizeConsumed.fromJson(data["data"] as Map<String, dynamic>);
    } else {
      throw PaymentBackendError();
    }
  }

  void close() => inAppPurchaseService.close();

  Future<void> start() async => inAppPurchaseService.start();
}
