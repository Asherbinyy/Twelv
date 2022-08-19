import 'package:json_annotation/json_annotation.dart';

part 'places_location.g.dart';

@JsonSerializable()
class PlacesLocation {
  final double lat;
  final double lng;

  PlacesLocation({required this.lat, required this.lng});

  factory PlacesLocation.fromJson(Map<String, dynamic> json) =>
      _$PlacesLocationFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesLocationToJson(this);
}
