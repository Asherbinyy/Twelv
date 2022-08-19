import 'package:twelv/common/extensions/double_extension.dart';
import 'package:twelv/model/user/base_user.dart';
import 'package:twelv/model/user/compatibility.dart';

extension BaseUserAnalytics on BaseUser {
  Map<String, Object> getAnalyticsData({Compatibility? compatibility}) {
    final Map<String, Object> data = <String, Object>{};
    data["affinity"] = compatibility?.complementarityScore.toStringRange() ?? "null";
    data["sexuality"] = compatibility?.sexualityScore.toStringRange() ?? "null";
    data["stability"] = compatibility?.solidityScore.toStringRange() ?? "null";
    data["complicity"] = compatibility?.complicityScore.toStringRange() ?? "null";
    data["sentimentally"] = compatibility?.feelingsScore.toStringRange() ?? "null";

    data["sign_astro_twelvy_sun"] = sunSign.toString();
    data["sign_astro_twelvy_asc"] = astrologicalSign.toString();

    return data;
  }
}
