import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/user/current_user.dart';

class OnboardingGenderViewData {
  final Gender? gender;
  final Gender? interestedIn;
  final bool? consentSensitiveData;

  OnboardingGenderViewData({this.gender, this.interestedIn, this.consentSensitiveData});
}

class OnboardingGenderViewSettings extends OnboardingGenderViewData {
  final bool isEdit;

  OnboardingGenderViewSettings(
      {required this.isEdit, Gender? gender, Gender? interestedIn, bool? consentSensitiveData})
      : super(
            gender: gender, interestedIn: interestedIn, consentSensitiveData: consentSensitiveData);

  factory OnboardingGenderViewSettings.fromUser(CurrentUser currentUser, {required bool isEdit}) =>
      OnboardingGenderViewSettings(
          isEdit: isEdit,
          gender: currentUser.gender,
          interestedIn: currentUser.interestedIn,
          consentSensitiveData: currentUser.consentSensitiveData);
}
