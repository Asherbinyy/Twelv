import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/user/profile.dart';

part 'profiles.g.dart';

@JsonSerializable()
class Profiles {
  final List<Profile> data;

  Profiles(this.data);

  factory Profiles.fromJson(Map<String, dynamic> json) => _$ProfilesFromJson(json);

  Map<String, dynamic> toJson() => _$ProfilesToJson(this);
}
