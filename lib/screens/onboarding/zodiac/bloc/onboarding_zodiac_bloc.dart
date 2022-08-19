import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/zodiac/bloc/onboarding_zodiac_event.dart';
import 'package:twelv/screens/onboarding/zodiac/bloc/onboarding_zodiac_state.dart';

class OnboardingZodiacBloc extends Bloc<OnboardingZodiacEvent, OnboardingZodiacState> {
  OnboardingZodiacBloc() : super(const OnboardingZodiacState.initial());

  late OnboardingBloc onboardingBloc;

  @override
  Stream<OnboardingZodiacState> mapEventToState(
    OnboardingZodiacEvent event,
  ) async* {
    if (event is GetZodiac) {
      yield const OnboardingZodiacState.loading();
      try {
        yield OnboardingZodiacState.succeeded(await onboardingBloc.model.getZodiac());
      } on DioError catch (e) {
        yield OnboardingZodiacState.error(e);
      }
    }
  }
}
