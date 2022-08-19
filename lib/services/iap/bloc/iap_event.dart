import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/services/iap/model/in_app_purchase_error.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';
import 'package:twelv/services/iap/model/in_app_purchase_response.dart';

part 'iap_event.freezed.dart';

@freezed
@immutable
abstract class IAPEvent with _$IAPEvent {
  const factory IAPEvent.startObserving() = StartObserving;

  const factory IAPEvent.fetchProducts({required IAPType type}) = FetchProducts;

  const factory IAPEvent.buy({required String productId}) = Buy;

  const factory IAPEvent.checkConsume() = CheckConsume;

  const factory IAPEvent.purchaseResponseReceived({required InAppPurchaseResponse response}) =
      PurchaseResponseReceived;

  const factory IAPEvent.purchaseResponseErrorReceived({required InAppPurchaseError error}) =
      PurchaseResponseErrorReceived;

  const factory IAPEvent.unknowException({required dynamic error}) = UnknowException;
}
