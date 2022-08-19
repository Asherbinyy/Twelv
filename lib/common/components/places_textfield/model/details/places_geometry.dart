import 'package:json_annotation/json_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/details/places_location.dart';

part 'places_geometry.g.dart';

@JsonSerializable()
class PlacesGeometry {
  final PlacesLocation location;

  PlacesGeometry({required this.location});

  factory PlacesGeometry.fromJson(Map<String, dynamic> json) => _$PlacesGeometryFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesGeometryToJson(this);
}
