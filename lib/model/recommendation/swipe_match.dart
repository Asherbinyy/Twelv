import 'package:freezed_annotation/freezed_annotation.dart';

part 'swipe_match.g.dart';

@JsonSerializable()
class SwipeMatch {
  @JsonKey(name: "matched_get_stream_UUID")
  final String matchedGetStreamUUID;

  SwipeMatch(this.matchedGetStreamUUID);

  factory SwipeMatch.fromJson(Map<String, dynamic> json) => _$SwipeMatchFromJson(json);

  Map<String, dynamic> toJson() => _$SwipeMatchToJson(this);
}
