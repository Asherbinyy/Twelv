import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/common/extensions/date_extension.dart';
import 'package:twelv/model/file/image_dto.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';

@JsonSerializable(createFactory: false, createToJson: false)
abstract class BaseUser {
  int id;
  String? name;
  @JsonKey(name: "datetime_of_birth")
  DateTime? dateTimeOfBirth;
  @JsonKey(name: "place_of_birth")
  String? placeOfBirth;

  @JsonKey(name: "sun_sign")
  ZodiacSign? sunSign;
  @JsonKey(name: "astrological_sign")
  ZodiacSign? astrologicalSign;
  @JsonKey(name: "zodiac_text")
  String? zodiacText;
  @JsonKey(name: "interested_in")
  Gender? interestedIn;
  Gender? gender;
  String? about;
  @JsonKey(defaultValue: <ImageDto>[])
  List<ImageDto> images;
  @JsonKey(defaultValue: <ImageDto>[])
  List<ImageDto> blurred;

  BaseUser(
      {required this.id,
      this.name,
      this.dateTimeOfBirth,
      this.sunSign,
      this.astrologicalSign,
      this.zodiacText,
      this.interestedIn,
      this.gender,
      this.about,
      required this.images,
      required this.blurred});

  ImageDto? get avatar => images.isNotEmpty
      ? images.first
      : blurred.isNotEmpty
          ? blurred.first
          : null;

  int get age => (dateTimeOfBirth ?? DateTime.now()).yearsTillNow;

  bool get isBlocked => images.isEmpty && blurred.isNotEmpty;
}
