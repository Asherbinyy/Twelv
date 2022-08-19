import 'package:flutter_inapp_purchase/flutter_inapp_purchase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_finalize_request.g.dart';

enum PaymentStore {
  @JsonValue(1)
  apple,
  @JsonValue(2)
  google,
}

@JsonSerializable()
class PaymentFinalizeRequest {
  final PaymentStore store;

  @JsonKey(name: "is_product")
  final bool isProduct;

  @JsonKey(includeIfNull: false)
  final String? receipt;

  @JsonKey(name: "product_id", includeIfNull: false)
  final String? productId;

  @JsonKey(name: "purchase_token", includeIfNull: false)
  final String? purchaseToken;

  PaymentFinalizeRequest(
      {required this.store,
      required this.isProduct,
      this.receipt,
      this.productId,
      this.purchaseToken});

  factory PaymentFinalizeRequest.apple(
          {required bool isProduct, required String productId, required String token}) =>
      PaymentFinalizeRequest(
        store: PaymentStore.apple,
        isProduct: isProduct,
        receipt: token,
      );

  factory PaymentFinalizeRequest.google(
          {required bool isProduct, required String productId, required String token}) =>
      PaymentFinalizeRequest(
          store: PaymentStore.google,
          isProduct: isProduct,
          productId: productId,
          purchaseToken: token);

  static PaymentFinalizeRequest? fromPurchasedItem(PurchasedItem item,
      {required bool isAndroid, required bool isProduct}) {
    final String? token = item.purchaseToken ?? item.transactionReceipt;
    if (item.productId != null && token != null) {
      return isAndroid
          ? PaymentFinalizeRequest.google(
              isProduct: isProduct, productId: item.productId!, token: token)
          : PaymentFinalizeRequest.apple(
              isProduct: isProduct, productId: item.productId!, token: token);
    }
    return null;
  }

  factory PaymentFinalizeRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentFinalizeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentFinalizeRequestToJson(this);
}
