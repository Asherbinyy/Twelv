import 'dart:convert';
import 'dart:io';

import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/model/pricing/payment_finalize_request.dart';

class InAppPurchaseResponse {
  final String? productId;
  final String? receipt;

  InAppPurchaseResponse({required this.productId, required this.receipt});
}

extension InAppPurchaseResponseHelper on InAppPurchaseResponse {
  PaymentFinalizeRequest? get paymentFinalizeRequest {
    if (productId != null && receipt != null) {
      final bool isProduct = DependenciesContainer()
          .get<Environment>()
          .inAppPurchaseCreditProductIds
          .contains(productId);
      if (Platform.isIOS) {
        return PaymentFinalizeRequest.apple(
            isProduct: isProduct, productId: productId!, token: receipt!);
      } else if (Platform.isAndroid) {
        //In Android, there is json object returned as receipt
        final dynamic dto = jsonDecode(receipt!);
        final String _receipt = dto["purchaseToken"] as String;
        return PaymentFinalizeRequest.google(
            isProduct: isProduct, productId: productId!, token: _receipt);
      }
    }
    return null;
  }
}
