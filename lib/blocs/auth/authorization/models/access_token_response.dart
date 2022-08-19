import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_response.g.dart';

@JsonSerializable()
class AccessTokenResponse {
  @JsonKey(name: "access_token")
  final String accessToken;

  @JsonKey(name: "is_onboarded")
  final bool isOnboarded;

  AccessTokenResponse({required this.accessToken, required this.isOnboarded});

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenResponseToJson(this);
}
