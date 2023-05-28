// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_finalize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentFinalizeRequest _$PaymentFinalizeRequestFromJson(
        Map<String, dynamic> json) =>
    PaymentFinalizeRequest(
      store: $enumDecode(_$PaymentStoreEnumMap, json['store']),
      isProduct: json['is_product'] as bool,
      receipt: json['receipt'] as String?,
      productId: json['product_id'] as String?,
      purchaseToken: json['purchase_token'] as String?,
    );

Map<String, dynamic> _$PaymentFinalizeRequestToJson(
    PaymentFinalizeRequest instance) {
  final val = <String, dynamic>{
    'store': _$PaymentStoreEnumMap[instance.store]!,
    'is_product': instance.isProduct,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receipt', instance.receipt);
  writeNotNull('product_id', instance.productId);
  writeNotNull('purchase_token', instance.purchaseToken);
  return val;
}

const _$PaymentStoreEnumMap = {
  PaymentStore.apple: 1,
  PaymentStore.google: 2,
};
