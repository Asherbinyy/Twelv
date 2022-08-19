import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/profile.dart';

part 'profile_data.g.dart';

@JsonSerializable()
class ProfileData {
  final Profile data;

  ProfileData(this.data);

  factory ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}
