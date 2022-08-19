import 'package:json_annotation/json_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/details/places_details_result.dart';
import 'package:twelv/common/components/places_textfield/model/places_response_status.dart';

part 'places_details_response.g.dart';

@JsonSerializable()
class PlacesDetailsResponse {
  final String status;
  final PlacesDetailsResult result;

  bool get isValid =>
      status == PlacesResponseStatus.ok || status == PlacesResponseStatus.zeroResults;

  PlacesDetailsResponse({required this.status, required this.result});

  factory PlacesDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesDetailsResponseToJson(this);
}
