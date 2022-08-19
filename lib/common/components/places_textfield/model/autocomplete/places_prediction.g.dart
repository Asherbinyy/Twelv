// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesPrediction _$PlacesPredictionFromJson(Map<String, dynamic> json) {
  return PlacesPrediction(
    placeId: json['place_id'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$PlacesPredictionToJson(PlacesPrediction instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'description': instance.description,
    };
