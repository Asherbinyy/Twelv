import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/current_user.dart';

part 'current_user_response.g.dart';

@JsonSerializable()
class CurrentUserResponse {
  final CurrentUser data;

  CurrentUserResponse(this.data);

  factory CurrentUserResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentUserResponseToJson(this);
}
