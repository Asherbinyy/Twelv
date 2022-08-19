import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:twelv/model/profile/report_profile_request.dart';
import 'package:twelv/model/profile/unmatch_with_profile_request.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';
import 'package:twelv/model/recommendation/swipe_action.dart';
import 'package:twelv/model/user/matched_profiles.dart';
import 'package:twelv/model/user/profiles.dart';

part 'users_client.g.dart';

@RestApi()
abstract class UsersRestClient {
  factory UsersRestClient(Dio dio, {required String baseUrl}) = _UsersRestClient;

  @GET("/users/me/recommendations?age_min={ageMin}&age_max={ageMax}&distance={distance}")
  Future<Profiles> getUsersRecommendations(
      @Path("ageMin") int ageMin, @Path("ageMax") int ageMax, @Path("distance") int distance);

  @GET("/users/me/recommendations/pod")
  Future<HttpResponse<dynamic>> getProfileOfDay();

  @GET("/recommendations/filters")
  Future<RecommendationsFilters> getFilters();

  @GET("/users/me/admirers")
  Future<Profiles> getAdmirers();

  @GET("/users/me/superlike")
  Future<Profiles> getSuperlike();

  @GET("/users/me/matches")
  Future<MatchedProfiles> getMatches();

  @POST("/users/swipe?use_credit={useCredit}")
  Future<HttpResponse<dynamic>> postSwipeAction(@Body() SwipeAction swipeAction,
      {@Path("useCredit") required bool useCredit});

  @POST("/users/swipe")
  Future<HttpResponse<dynamic>> postSwipeActionNoCredit(@Body() SwipeAction swipeAction);

  @POST("/users/report")
  Future<void> reportProfile(@Body() ReportProfileRequest request);

  @DELETE("/users/match")
  Future<void> unmatchWithProfile(@Body() UnmatchWithProfileRequest request);
}
