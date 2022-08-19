import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/matched_profile.dart';

part 'matched_profiles.g.dart';

@JsonSerializable()
class MatchedProfiles {
  final List<MatchedProfile> data;

  MatchedProfiles(this.data);

  factory MatchedProfiles.fromJson(Map<String, dynamic> json) => _$MatchedProfilesFromJson(json);

  Map<String, dynamic> toJson() => _$MatchedProfilesToJson(this);
}
