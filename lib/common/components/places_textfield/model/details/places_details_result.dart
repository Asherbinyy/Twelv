import 'package:json_annotation/json_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/details/places_geometry.dart';

part 'places_details_result.g.dart';

@JsonSerializable()
class PlacesDetailsResult {
  final PlacesGeometry geometry;

  PlacesDetailsResult({required this.geometry});

  factory PlacesDetailsResult.fromJson(Map<String, dynamic> json) =>
      _$PlacesDetailsResultFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesDetailsResultToJson(this);
}
