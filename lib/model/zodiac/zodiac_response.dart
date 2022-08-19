import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/zodiac/zodiac.dart';

part 'zodiac_response.g.dart';

@JsonSerializable()
class ZodiacResponse {
  @JsonKey(name: "sun")
  final Zodiac? sun;
  @JsonKey(name: "asc")
  final Zodiac? ascendant;
  @JsonKey(name: "text")
  final String? text;

  ZodiacResponse({
    this.sun,
    this.ascendant,
    this.text,
  });

  factory ZodiacResponse.fromJson(Map<String, dynamic> json) => _$ZodiacResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ZodiacResponseToJson(this);
}
