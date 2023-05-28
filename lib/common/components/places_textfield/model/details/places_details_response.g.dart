// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesDetailsResponse _$PlacesDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesDetailsResponse(
      status: json['status'] as String,
      result:
          PlacesDetailsResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlacesDetailsResponseToJson(
        PlacesDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };
