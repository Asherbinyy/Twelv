import 'package:twelv/common/extensions/double_extension.dart';
import 'package:twelv/model/user/profile.dart';

extension ProfileAnalytics on Profile {
  Map<String, Object> getAnalyticsData() {
    final Map<String, Object> data = <String, Object>{};
    data["affinity"] = compatibility?.complementarityScore.toStringRange() ?? "null";
    data["sexuality"] = compatibility?.sexualityScore.toStringRange() ?? "null";
    data["stability"] = compatibility?.solidityScore.toStringRange() ?? "null";
    data["complicity"] = compatibility?.complicityScore.toStringRange() ?? "null";
    data["sentimentally"] = compatibility?.feelingsScore.toStringRange() ?? "null";
    data["profile_of_the_day"] = profileOfDay;

    data["superliked"] = superliked.toString();

    data["distance"] = distance.toString();

    data["sign_astro_twelvy_sun"] = sunSign.toString();
    data["sign_astro_twelvy_asc"] = astrologicalSign.toString();

    return data;
  }
}
