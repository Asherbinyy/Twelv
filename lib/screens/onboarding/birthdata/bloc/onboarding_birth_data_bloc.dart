import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:twelv/model/profile/onboarding_birth_data_request.dart';
import 'package:twelv/screens/onboarding/birthdata/bloc/onboarding_birth_data_event.dart';
import 'package:twelv/screens/onboarding/birthdata/bloc/onboarding_birth_data_state.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';

class OnboardingBirthDataBloc extends Bloc<OnboardingBirthDataEvent, OnboardingBirthDataState> {
  FormatterService _formatters;
  late OnboardingBloc? onboardingBloc;

  OnboardingBirthDataBloc(this._formatters) : super(const OnboardingBirthDataState.initial());

  @override
  Stream<OnboardingBirthDataState> mapEventToState(OnboardingBirthDataEvent event) async* {
    if (event is BirthDataEntered) {
      yield const OnboardingBirthDataState.loading();
      try {
        await _updateProfile();
        yield const OnboardingBirthDataState.succeeded();
      } on DioError catch (e) {
        yield OnboardingBirthDataState.error(e);
      }
    }
  }

  Future<void>? _updateProfile() async {
    final DateTime? date = onboardingBloc?.state.birthDate;
    final TimeOfDay? time = onboardingBloc?.state.birthTime;
    final DateTime? birthDateTime = date != null && time != null
        ? DateTime(date.year, date.month, date.day, time.hour, time.minute)
        : null;
    return onboardingBloc?.model.updateProfile(
      OnboardingBirthDataRequest(
          name: onboardingBloc?.state.name,
          dateTimeOfBirth:
              _formatters.date.format(birthDateTime, inFormat: AppDateFormat.birthDateTimeApi),
          latitudeBirth: onboardingBloc?.state.birthLocation?.lat,
          longitudeBirth: onboardingBloc?.state.birthLocation?.lng,
          placeOfBirth: onboardingBloc?.state.birthLocation?.name),
    );
  }
}
