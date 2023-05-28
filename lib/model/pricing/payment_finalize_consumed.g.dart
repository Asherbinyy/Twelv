// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_finalize_consumed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentFinalizeConsumed _$PaymentFinalizeConsumedFromJson(
        Map<String, dynamic> json) =>
    PaymentFinalizeConsumed(
      $enumDecode(_$PaymentStoreEnumMap, json['store']),
      json['user_id'] as int,
      json['product_id'] as String,
      json['transaction_id'] as String,
      DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$PaymentFinalizeConsumedToJson(
        PaymentFinalizeConsumed instance) =>
    <String, dynamic>{
      'store': _$PaymentStoreEnumMap[instance.store]!,
      'user_id': instance.userId,
      'product_id': instance.productId,
      'transaction_id': instance.transactionId,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$PaymentStoreEnumMap = {
  PaymentStore.apple: 1,
  PaymentStore.google: 2,
};
