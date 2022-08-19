import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/pricing/pricing.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';

part 'pricing_state.freezed.dart';

@freezed
@immutable
class PricingState with _$PricingState {
  const factory PricingState.initial() = Initial;

  const factory PricingState.loading() = Loading;

  const factory PricingState.apiError(Exception error) = ApiError;

  const factory PricingState.info({required Pricing pricing}) = Info;

  const factory PricingState.products({required Pricing pricing, required PremiumPopupPage page}) =
      Products;
}
