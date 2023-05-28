// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_textfield_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _PlacesRestApiClient implements PlacesRestApiClient {
  _PlacesRestApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://maps.googleapis.com/maps/api/place/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PlacesAutocompleteResponse> autocomplete(
    apiKey,
    sessionToken,
    searchText,
    type,
    language,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'key': apiKey,
      r'sessiontoken': sessionToken,
      r'input': searchText,
      r'type': type,
      r'language': language,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlacesAutocompleteResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/autocomplete/json',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlacesAutocompleteResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PlacesDetailsResponse> details(
    apiKey,
    sessionToken,
    placeId,
    language,
    fields,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'key': apiKey,
      r'sessiontoken': sessionToken,
      r'place_id': placeId,
      r'language': language,
      r'fields': fields,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlacesDetailsResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/details/json',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlacesDetailsResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
