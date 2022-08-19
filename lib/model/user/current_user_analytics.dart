import 'package:twelv/model/user/current_user.dart';

extension CurrentUserAnalytics on CurrentUser {
  Map<String, Object> getAnalyticsData() {
    final Map<String, Object> data = <String, Object>{};
    data["gender"] = gender.toString();
    data["sign_astro_sun"] = sunSign.toString();
    data["sign_astro_asc"] = astrologicalSign.toString();
    data["sexual_preference"] = interestedIn.toString();
    data["age"] = age;
    data["user_premium"] = isPremium;
    data["position_lat"] = lat.toString();
    data["position_lon"] = lon.toString();
    data["credits"] = credits.toString();
    data["user_premium"] = isPremium.toString();
    return data;
  }
}
