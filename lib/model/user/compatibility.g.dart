// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compatibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Compatibility _$CompatibilityFromJson(Map<String, dynamic> json) =>
    Compatibility(
      (json['mainScore'] as num?)?.toDouble(),
      (json['complementarityScore'] as num?)?.toDouble(),
      json['complementarityText'] as String?,
      (json['sexualityScore'] as num?)?.toDouble(),
      json['sexualityText'] as String?,
      (json['solidityScore'] as num?)?.toDouble(),
      json['solidityText'] as String?,
      (json['complicityScore'] as num?)?.toDouble(),
      json['complicityText'] as String?,
      (json['feelingsScore'] as num?)?.toDouble(),
      json['feelingsText'] as String?,
    );

Map<String, dynamic> _$CompatibilityToJson(Compatibility instance) =>
    <String, dynamic>{
      'mainScore': instance.mainScore,
      'complementarityScore': instance.complementarityScore,
      'complementarityText': instance.complementarityText,
      'sexualityScore': instance.sexualityScore,
      'sexualityText': instance.sexualityText,
      'solidityScore': instance.solidityScore,
      'solidityText': instance.solidityText,
      'complicityScore': instance.complicityScore,
      'complicityText': instance.complicityText,
      'feelingsScore': instance.feelingsScore,
      'feelingsText': instance.feelingsText,
    };
