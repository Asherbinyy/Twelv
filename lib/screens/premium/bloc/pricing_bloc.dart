import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/screens/premium/bloc/pricing_event.dart';
import 'package:twelv/screens/premium/bloc/pricing_model.dart';
import 'package:twelv/screens/premium/bloc/pricing_state.dart';

class PricingBloc extends Bloc<PricingEvent, PricingState> {
  final PricingModel _model;

  PricingBloc(this._model) : super(const PricingState.initial());

  @override
  Stream<PricingState> mapEventToState(
    PricingEvent event,
  ) async* {
    try {
      if (event is Fetch || event is Back) {
        yield const PricingState.loading();
        yield PricingState.info(pricing: await _model.getPricing());
      } else if (event is ChangePage) {
        yield const PricingState.loading();
        yield PricingState.products(pricing: await _model.getPricing(), page: event.page);
      }
    } on Exception catch (e) {
      yield PricingState.apiError(e);
    }
  }
}
