// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_finalize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentFinalizeRequest _$PaymentFinalizeRequestFromJson(
    Map<String, dynamic> json) {
  return PaymentFinalizeRequest(
    store: _$enumDecode(_$PaymentStoreEnumMap, json['store']),
    isProduct: json['is_product'] as bool,
    receipt: json['receipt'] as String?,
    productId: json['product_id'] as String?,
    purchaseToken: json['purchase_token'] as String?,
  );
}

Map<String, dynamic> _$PaymentFinalizeRequestToJson(
    PaymentFinalizeRequest instance) {
  final val = <String, dynamic>{
    'store': _$PaymentStoreEnumMap[instance.store],
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

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PaymentStoreEnumMap = {
  PaymentStore.apple: 1,
  PaymentStore.google: 2,
};
