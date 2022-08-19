// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserRestClient implements UserRestClient {
  _UserRestClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CurrentUserResponse> getCurrentUser() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CurrentUserResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/users/me',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CurrentUserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProfileData> getUser(userId, useCredit) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProfileData>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/users/$userId?use_credit=$useCredit',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProfileData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ZodiacResponse> getZodiac() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ZodiacResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/users/zodiac',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ZodiacResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> updateNotifications(notificationSettings) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(notificationSettings.toJson());
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/users/profile/notifications',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<HoroscopeResponse> getHoroscope(date) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'date': date};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HoroscopeResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/users/horoscope',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = HoroscopeResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> postConsent(userConsent) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userConsent.toJson());
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/users/profile/consent',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> updateProfile(
      {name,
      dateTimeOfBirth,
      latitudeBirth,
      longitudeBirth,
      placeOfBirth,
      gender,
      interestedIn,
      about,
      lat,
      lon,
      notificationsToken,
      isOnboarded,
      images = const <File>[]}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = FormData();
    if (name != null) {
      _data.fields.add(MapEntry('name', name));
    }
    if (dateTimeOfBirth != null) {
      _data.fields.add(MapEntry('datetime_of_birth', dateTimeOfBirth));
    }
    if (latitudeBirth != null) {
      _data.fields
          .add(MapEntry('birth_location_lat', latitudeBirth.toString()));
    }
    if (longitudeBirth != null) {
      _data.fields
          .add(MapEntry('birth_location_lon', longitudeBirth.toString()));
    }
    if (placeOfBirth != null) {
      _data.fields.add(MapEntry('place_of_birth', placeOfBirth));
    }
    if (gender != null) {
      _data.fields.add(MapEntry('gender', gender));
    }
    if (interestedIn != null) {
      _data.fields.add(MapEntry('interested_in', interestedIn));
    }
    if (about != null) {
      _data.fields.add(MapEntry('about', about));
    }
    if (lat != null) {
      _data.fields.add(MapEntry('lat', lat.toString()));
    }
    if (lon != null) {
      _data.fields.add(MapEntry('lon', lon.toString()));
    }
    if (notificationsToken != null) {
      _data.fields.add(MapEntry('notification_token', notificationsToken));
    }
    if (isOnboarded != null) {
      _data.fields.add(MapEntry('is_onboarded', isOnboarded.toString()));
    }
    _data.files.addAll(images.map((i) => MapEntry(
        'images[]',
        MultipartFile.fromFileSync(
          i.path,
          filename: i.path.split(Platform.pathSeparator).last,
        ))));
    await _dio.fetch<void>(_setStreamType<void>(Options(
            method: 'POST',
            headers: <String, dynamic>{r'Content-Type': 'multipart/form-data'},
            extra: _extra,
            contentType: 'multipart/form-data')
        .compose(_dio.options, '/users/profile',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> deleteImage(mediaId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'DELETE', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/users/deleteImage?mediaId=$mediaId',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> deleteUser() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'DELETE', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/users/delete',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
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
