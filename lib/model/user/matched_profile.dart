import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/file/image_dto.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/user/chat_user.dart';
import 'package:twelv/model/user/compatibility.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';

part 'matched_profile.g.dart';

@JsonSerializable()
class MatchedProfile extends Profile implements ChatUser {
  @override
  @JsonKey(name: "get_stream_UUID")
  final String? getStreamUUID;

  MatchedProfile(
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
      bool superliked = false,
      double? distance,
      Compatibility? compatibility,
      this.getStreamUUID})
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
            blurred: blurred,
            superliked: superliked,
            distance: distance,
            compatibility: compatibility);

  factory MatchedProfile.fromJson(Map<String, dynamic> json) => _$MatchedProfileFromJson(json);

  Map<String, dynamic> toJson() => _$MatchedProfileToJson(this);
}
