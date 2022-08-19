import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/common/extensions/date_extension.dart';
import 'package:twelv/model/onboarding/birth_data_view_data.dart';
import 'package:twelv/model/onboarding/onboarding_gender_view_data.dart';
import 'package:twelv/model/user/current_user.dart';

extension CurrentUserHelper on CurrentUser {
  @JsonKey(ignore: true)
  BirthDataViewData get birthDataViewData => BirthDataViewData(
      birthDate: dateTimeOfBirth,
      birthTime: dateTimeOfBirth?.timeOfDay,
      birthPlaceName: placeOfBirth,
      birthLat: birthLocationLat,
      birthLon: birthLocationLon);

  @JsonKey(ignore: true)
  set birthDataViewData(BirthDataViewData newValue) {
    dateTimeOfBirth = DateTimeExtension.combine(newValue.birthDate, newValue.birthTime);
    placeOfBirth = newValue.birthPlaceName;
    birthLocationLat = newValue.birthLat;
    birthLocationLon = newValue.birthLon;
  }

  @JsonKey(ignore: true)
  set genderData(OnboardingGenderViewData newValue) {
    gender = newValue.gender;
    interestedIn = newValue.interestedIn;
  }
}
