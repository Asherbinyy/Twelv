import 'package:freezed_annotation/freezed_annotation.dart';

part 'unmatch_with_profile_request.g.dart';

@JsonSerializable()
class UnmatchWithProfileRequest {
  @JsonKey(name: "user_id")
  final int userId;

  UnmatchWithProfileRequest({required this.userId});

  factory UnmatchWithProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UnmatchWithProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UnmatchWithProfileRequestToJson(this);
}
