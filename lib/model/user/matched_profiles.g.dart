// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matched_profiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchedProfiles _$MatchedProfilesFromJson(Map<String, dynamic> json) {
  return MatchedProfiles(
    (json['data'] as List<dynamic>)
        .map((e) => MatchedProfile.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MatchedProfilesToJson(MatchedProfiles instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
