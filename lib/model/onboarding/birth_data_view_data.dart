import 'package:flutter/material.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';
import 'package:twelv/common/extensions/date_extension.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';

class BirthDataViewData {
  final DateTime? birthDate;
  final TimeOfDay? birthTime;
  final String? birthPlaceName;
  final double? birthLat;
  final double? birthLon;

  BirthDataViewData({
    this.birthDate,
    this.birthTime,
    this.birthPlaceName,
    this.birthLat,
    this.birthLon,
  });
}

class BirthDataViewBlocParentSettings extends BirthDataViewData {
  final bool isEdit;

  factory BirthDataViewBlocParentSettings.fromUser(CurrentUser currentUser,
          {required bool isEdit}) =>
      BirthDataViewBlocParentSettings(
          birthDate: currentUser.dateTimeOfBirth,
          birthTime: currentUser.dateTimeOfBirth?.timeOfDay,
          birthPlaceName: currentUser.placeOfBirth,
          birthLat: currentUser.birthLocationLat,
          birthLon: currentUser.birthLocationLon,
          isEdit: isEdit);

  factory BirthDataViewBlocParentSettings.onboarding(OnboardingBloc bloc) =>
      BirthDataViewBlocParentSettings(
          birthDate: bloc.state.birthDate, birthTime: bloc.state.birthTime, isEdit: false);

  BirthDataViewBlocParentSettings({
    required this.isEdit,
    DateTime? birthDate,
    TimeOfDay? birthTime,
    String? birthPlaceName,
    double? birthLat,
    double? birthLon,
  }) : super(
            birthDate: birthDate,
            birthTime: birthTime,
            birthPlaceName: birthPlaceName,
            birthLat: birthLat,
            birthLon: birthLon);

  PlacesDetails? get placeDetails => birthPlaceName != null && birthLat != null && birthLon != null
      ? PlacesDetails(id: "", name: birthPlaceName!, lat: birthLat!, lng: birthLon!)
      : null;
}
