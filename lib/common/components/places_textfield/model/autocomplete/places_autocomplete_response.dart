import 'package:json_annotation/json_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_prediction.dart';
import 'package:twelv/common/components/places_textfield/model/places_response_status.dart';

part 'places_autocomplete_response.g.dart';

@JsonSerializable()
class PlacesAutocompleteResponse {
  final String status;
  final List<PlacesPrediction> predictions;

  bool get isValid =>
      status == PlacesResponseStatus.ok || status == PlacesResponseStatus.zeroResults;

  PlacesAutocompleteResponse({required this.status, required this.predictions});

  factory PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesAutocompleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesAutocompleteResponseToJson(this);
}
