import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/file/image_dto.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/compatibility.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile extends BaseUser {
  @JsonKey(defaultValue: false)
  bool superliked;

  double? distance;

  @JsonKey(ignore: true)
  bool profileOfDay = false;

  Compatibility? compatibility;

  Profile(
      {required int id,
      String? name,
      DateTime? dateTimeOfBirth,
      ZodiacSign? sunSign,
      ZodiacSign? astrologicalSign,
      String? zodiacText,
      Gender? interestedIn,
      Gender? gender,
      String? about,
      List<ImageDto> images = const <ImageDto>[],
      List<ImageDto> blurred = const <ImageDto>[],
      required this.superliked,
      this.distance,
      this.compatibility})
      : super(
            id: id,
            name: name,
            dateTimeOfBirth: dateTimeOfBirth,
            sunSign: sunSign,
            astrologicalSign: astrologicalSign,
            zodiacText: zodiacText,
            interestedIn: interestedIn,
            gender: gender,
            about: about,
            images: images,
            blurred: blurred);

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

extension ProfileOfDay on Profile {
  @JsonKey(ignore: true)
  bool get isProfileOfDay => profileOfDay;

  @JsonKey(ignore: true)
  set isProfileOfDay(bool newValue) {
    profileOfDay = newValue;
    if (profileOfDay) {
      superliked = false;
    }
  }
}
