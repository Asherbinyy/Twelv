import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/pricing/payment_finalize_request.dart';

part 'payment_finalize_consumed.g.dart';

@JsonSerializable()
class PaymentFinalizeConsumed {
  final PaymentStore store;

  @JsonKey(name: "user_id")
  final int userId;

  @JsonKey(name: "product_id")
  final String productId;

  @JsonKey(name: "transaction_id")
  final String transactionId;

  @JsonKey(name: "created_at")
  final DateTime createdAt;

  PaymentFinalizeConsumed(
      this.store, this.userId, this.productId, this.transactionId, this.createdAt);

  factory PaymentFinalizeConsumed.fromJson(Map<String, dynamic> json) =>
      _$PaymentFinalizeConsumedFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentFinalizeConsumedToJson(this);
}
