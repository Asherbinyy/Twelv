import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_autocomplete_response.dart';
import 'package:twelv/common/components/places_textfield/model/details/places_details_response.dart';

part 'places_textfield_api_client.g.dart';

@RestApi(baseUrl: "https://maps.googleapis.com/maps/api/place/")
abstract class PlacesRestApiClient {
  factory PlacesRestApiClient(Dio dio) = _PlacesRestApiClient;

  @GET("/autocomplete/json")
  Future<PlacesAutocompleteResponse> autocomplete(
    @Query("key") String apiKey,
    @Query("sessiontoken") String sessionToken,
    @Query("input") String searchText,
    @Query("type") String type,
    @Query("language") String language,
  );

  @GET("/details/json")
  Future<PlacesDetailsResponse> details(
    @Query("key") String apiKey,
    @Query("sessiontoken") String sessionToken,
    @Query("place_id") String placeId,
    @Query("language") String language,
    @Query("fields") String fields,
  );
}
