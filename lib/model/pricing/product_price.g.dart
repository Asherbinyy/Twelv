// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPrice _$ProductPriceFromJson(Map<String, dynamic> json) {
  return ProductPrice(
    name: json['name'] as String?,
    productId: json['product_id'] as String?,
    price: (json['price'] as num?)?.toDouble(),
    discount: (json['discount'] as num?)?.toDouble(),
    code: json['code'] as String?,
  );
}

Map<String, dynamic> _$ProductPriceToJson(ProductPrice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'product_id': instance.productId,
      'price': instance.price,
      'discount': instance.discount,
      'code': instance.code,
    };
