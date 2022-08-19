// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_details_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesDetailsResult _$PlacesDetailsResultFromJson(Map<String, dynamic> json) {
  return PlacesDetailsResult(
    geometry: PlacesGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlacesDetailsResultToJson(
        PlacesDetailsResult instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
    };
