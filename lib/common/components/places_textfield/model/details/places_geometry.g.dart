// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesGeometry _$PlacesGeometryFromJson(Map<String, dynamic> json) {
  return PlacesGeometry(
    location: PlacesLocation.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlacesGeometryToJson(PlacesGeometry instance) =>
    <String, dynamic>{
      'location': instance.location,
    };
