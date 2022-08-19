import 'package:freezed_annotation/freezed_annotation.dart';

part 'swipe_action.g.dart';

@JsonSerializable()
class SwipeAction {
  @JsonKey(name: "to_user")
  final int toUser;

  final bool like;

  final bool superlike;

  SwipeAction({required this.toUser, required this.like, required this.superlike});

  factory SwipeAction.fromJson(Map<String, dynamic> json) => _$SwipeActionFromJson(json);

  Map<String, dynamic> toJson() => _$SwipeActionToJson(this);
}
