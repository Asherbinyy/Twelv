import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/services/iap/model/in_app_purchase_error.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';
import 'package:twelv/services/iap/model/in_app_purchase_response.dart';

part 'iap_state.freezed.dart';

@freezed
@immutable
abstract class IAPState with _$IAPState {
  const factory IAPState.initial() = Initial;

  const factory IAPState.products({required List<InAppPurchaseItem> products}) = Products;

  const factory IAPState.finished({required bool success, required String productId}) = Finished;

  const factory IAPState.loading() = Loading;

  const factory IAPState.error({required dynamic error}) = Error;

  const factory IAPState.purchaseRestored({required int count}) = PurchaseRestored;

  const factory IAPState.purchaseFinished(
      {required InAppPurchaseResponse? response,
      required dynamic backendResponse}) = PurchaseFinished;

  const factory IAPState.purchaseError({required InAppPurchaseError error}) = PurchaseError;
}
