import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_finalize_success_response.g.dart';

@JsonSerializable()
class PaymentFinalizeSuccessResponse {
  @JsonKey(name: "added_credits")
  final int addedCredits;

  @JsonKey(name: "has_credits")
  final int hasCredits;

  @JsonKey(name: "switched_to_premium")
  final bool switchedToPremium;

  @JsonKey(name: "plan_ends_at")
  final DateTime? planEndsAt;

  PaymentFinalizeSuccessResponse(
      this.addedCredits, this.hasCredits, this.switchedToPremium, this.planEndsAt);

  factory PaymentFinalizeSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentFinalizeSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentFinalizeSuccessResponseToJson(this);
}
