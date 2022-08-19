// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pricing _$PricingFromJson(Map<String, dynamic> json) {
  return Pricing(
    subscription: (json['subscription'] as List<dynamic>?)
        ?.map((e) => ProductPrice.fromJson(e as Map<String, dynamic>))
        .toList(),
    credit: (json['credit'] as List<dynamic>?)
        ?.map((e) => ProductPrice.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PricingToJson(Pricing instance) => <String, dynamic>{
      'subscription': instance.subscription,
      'credit': instance.credit,
    };
