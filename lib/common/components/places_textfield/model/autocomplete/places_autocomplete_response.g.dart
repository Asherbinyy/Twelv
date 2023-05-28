// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesAutocompleteResponse _$PlacesAutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesAutocompleteResponse(
      status: json['status'] as String,
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) => PlacesPrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlacesAutocompleteResponseToJson(
        PlacesAutocompleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'predictions': instance.predictions,
    };
