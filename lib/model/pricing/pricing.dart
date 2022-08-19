import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/pricing/product_price.dart';

part 'pricing.g.dart';

@JsonSerializable()
class Pricing {
  final List<ProductPrice>? subscription;

  final List<ProductPrice>? credit;

  Pricing({required this.subscription, required this.credit});

  factory Pricing.fromJson(Map<String, dynamic> json) => _$PricingFromJson(json);

  Map<String, dynamic> toJson() => _$PricingToJson(this);
}
