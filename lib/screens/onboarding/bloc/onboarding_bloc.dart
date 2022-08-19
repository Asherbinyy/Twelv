import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:twelv/blocs/location/location_bloc.dart';
import 'package:twelv/blocs/location/location_event.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_model.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final OnboardingModel model;

  OnboardingBloc(this.model) : super(OnboardingState());

  LocationBloc? locationBloc;

  @override
  Stream<OnboardingState> mapEventToState(
    OnboardingEvent event,
  ) async* {
    if (event is NameEntered) {
      yield state.copyWith(name: event.name);
    } else if (event is BirthDataEntered) {
      yield state.copyWith(
          birthTime: event.birthTime,
          birthLocation: event.birthLocation,
          birthDate: event.birthDate);
    } else if (event is GenderEntered) {
      yield state.copyWith(gender: event.gender, interestedIn: event.interestedIn);
    } else if (event is PhotoAdd) {
      if (event.file != null) {
        yield state.copyWith(photos: List<File>.from(state.photos ?? <File>[])..add(event.file!));
      }
    } else if (event is PhotoDelete) {
      if (state.photos != null && event.index != null && state.photos!.length > event.index!) {
        yield state.copyWith(
            photos: List<File>.from(state.photos ?? <File>[])..removeAt(event.index!));
      }
    } else if (event is DescriptionEntered) {
      yield state.copyWith(description: event.description);
    } else if (event is LocationEntered) {
      locationBloc?.add(const LocationEvent.userAsked());
      yield state.copyWith(lat: event.lat, lon: event.lon);
    } else if (event is Finished) {
      yield state.copyWith(isFinished: true);
    }
  }
}
