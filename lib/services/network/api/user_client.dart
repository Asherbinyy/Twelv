import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:twelv/model/documents/user_consent.dart';
import 'package:twelv/model/user/current_user_response.dart';
import 'package:twelv/model/user/notification_settings.dart';
import 'package:twelv/model/user/profile_data.dart';
import 'package:twelv/model/zodiac/horoscope_response.dart';
import 'package:twelv/model/zodiac/zodiac_response.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {required String baseUrl}) = _UserRestClient;

  @GET("/users/me")
  Future<CurrentUserResponse> getCurrentUser();

  @GET("/users/{userId}?use_credit={useCredit}")
  Future<ProfileData> getUser(@Path() int userId, @Path() String useCredit);

  @GET("/users/zodiac")
  Future<ZodiacResponse> getZodiac();

  @POST("/users/profile/notifications")
  Future<void> updateNotifications(@Body() NotificationSettings notificationSettings);

  @GET("/users/horoscope")
  Future<HoroscopeResponse> getHoroscope(@Query("date") String date);

  @POST("/users/profile/consent")
  Future<void> postConsent(@Body() UserConsent userConsent);

  @POST("/users/profile")
  @Headers(<String, dynamic>{'Content-Type': 'multipart/form-data'})
  @MultiPart()
  Future<void> updateProfile(
      {@Part() String? name,
      @Part(name: "datetime_of_birth") String? dateTimeOfBirth,
      @Part(name: "birth_location_lat") double? latitudeBirth,
      @Part(name: "birth_location_lon") double? longitudeBirth,
      @Part(name: "place_of_birth") String? placeOfBirth,
      @Part() String? gender,
      @Part(name: "interested_in") String? interestedIn,
      @Part() String? about,
      @Part() double? lat,
      @Part() double? lon,
      @Part(name: "notification_token") String? notificationsToken,
      @Part(name: "is_onboarded") int? isOnboarded,
      @Part(name: "images[]") List<File> images = const <File>[]});

  @DELETE("/users/deleteImage?mediaId={mediaId}")
  Future<void> deleteImage(@Path() int mediaId);

  @DELETE("/users/delete")
  Future<void> deleteUser();
}
