// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profiles _$ProfilesFromJson(Map<String, dynamic> json) => Profiles(
      (json['data'] as List<dynamic>)
          .map((e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfilesToJson(Profiles instance) => <String, dynamic>{
      'data': instance.data,
    };
