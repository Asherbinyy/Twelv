// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesLocation _$PlacesLocationFromJson(Map<String, dynamic> json) {
  return PlacesLocation(
    lat: (json['lat'] as num).toDouble(),
    lng: (json['lng'] as num).toDouble(),
  );
}

Map<String, dynamic> _$PlacesLocationToJson(PlacesLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
