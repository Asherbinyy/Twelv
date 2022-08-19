import 'package:json_annotation/json_annotation.dart';

part 'places_prediction.g.dart';

@JsonSerializable()
class PlacesPrediction {
  @JsonKey(name: "place_id")
  final String placeId;
  final String description;

  PlacesPrediction({
    required this.placeId,
    required this.description,
  });

  factory PlacesPrediction.fromJson(Map<String, dynamic> json) =>
      _$PlacesPredictionFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesPredictionToJson(this);
}
