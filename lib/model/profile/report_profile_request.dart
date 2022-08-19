import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_profile_request.g.dart';

@JsonSerializable()
class ReportProfileRequest {
  @JsonKey(name: "reported_user")
  final int userId;

  ReportProfileRequest({required this.userId});

  factory ReportProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ReportProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReportProfileRequestToJson(this);
}
