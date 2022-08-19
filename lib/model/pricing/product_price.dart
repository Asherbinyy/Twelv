import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_price.g.dart';

@JsonSerializable()
class ProductPrice {
  final String? name;

  @JsonKey(name: "product_id")
  final String? productId;

  final double? price;

  final double? discount;

  final String? code;

  ProductPrice(
      {required this.name,
      required this.productId,
      required this.price,
      required this.discount,
      required this.code});

  factory ProductPrice.fromJson(Map<String, dynamic> json) => _$ProductPriceFromJson(json);

  Map<String, dynamic> toJson() => _$ProductPriceToJson(this);

  double get lowestPrice {
    if (price == null && discount == null) {
      return 0;
    } else if (price == null) {
      return discount!;
    } else if (discount == null) {
      return price!;
    }
    return min(price!, discount!);
  }
}
