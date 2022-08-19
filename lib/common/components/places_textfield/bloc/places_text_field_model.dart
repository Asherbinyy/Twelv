import 'package:twelv/common/components/places_textfield/api/places_textfield_api_client.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_autocomplete_response.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_prediction.dart';
import 'package:twelv/common/components/places_textfield/model/details/places_details_response.dart';
import 'package:twelv/common/components/places_textfield/model/places_response_status.dart';
import 'package:uuid/uuid.dart';

class PlacesTextFieldModel {
  late final PlacesRestApiClient _api;
  late final String _apiKey;
  late final String? _language;
  late final int minimumSearchTextLength;
  late String _sessionToken;

  PlacesTextFieldModel({
    required PlacesRestApiClient apiClient,
    required String apiKey,
    String? language,
    int minimumSearchTextLength = 1,
  }) {
    _api = apiClient;
    _apiKey = apiKey;
    _language = language;
    this.minimumSearchTextLength = minimumSearchTextLength < 1 ? 1 : minimumSearchTextLength;
    _generateSessionToken();
  }

  Future<PlacesAutocompleteResponse> autocomplete(String searchText) =>
      searchText.length < minimumSearchTextLength
          ? Future<PlacesAutocompleteResponse>.value(
              PlacesAutocompleteResponse(
                status: PlacesResponseStatus.ok,
                predictions: <PlacesPrediction>[],
              ),
            )
          : _api.autocomplete(
              _apiKey,
              _sessionToken,
              searchText,
              "geocode",
              _language ?? "",
            );

  Future<PlacesDetailsResponse> details(String placeId) {
    final String token = _sessionToken;
    _generateSessionToken();
    return _api.details(
      _apiKey,
      token,
      placeId,
      _language ?? "",
      "geometry",
    );
  }

  void _generateSessionToken() => _sessionToken = const Uuid().v4();
}
