import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';

part 'pricing_event.freezed.dart';

@freezed
@immutable
abstract class PricingEvent with _$PricingEvent {
  const factory PricingEvent.fetch() = Fetch;

  const factory PricingEvent.changePage({required PremiumPopupPage page}) = ChangePage;

  const factory PricingEvent.back() = Back;
}
