import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';

part 'zodiac.g.dart';

@JsonSerializable()
class Zodiac {
  @JsonKey(name: "signId")
  final int? signId;
  @JsonKey(name: "Sign")
  final ZodiacSign? sign;

  Zodiac({
    this.signId,
    this.sign,
  });

  factory Zodiac.fromJson(Map<String, dynamic> json) => _$ZodiacFromJson(json);

  Map<String, dynamic> toJson() => _$ZodiacToJson(this);
}
