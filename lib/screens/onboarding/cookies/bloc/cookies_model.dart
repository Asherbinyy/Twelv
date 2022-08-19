import 'package:twelv/model/documents/user_consent.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/network/api/user_client.dart';

class CookiesModel {
  final UserRestClient _userRestClient;
  final AnalyticsTracker _analyticsTracker;
  final ErrorTracker _errorTracker;

  UserConsent userConsent = UserConsent(errorTracking: false, analytics: false);

  CookiesModel(this._userRestClient, this._analyticsTracker, this._errorTracker);

  Future<void> updateCookieConsent({required bool analytics, required bool errorTracking}) async {
    final UserConsent updated = UserConsent(analytics: analytics, errorTracking: errorTracking);

    await _userRestClient.postConsent(updated);

    _analyticsTracker.isEnabled = analytics;
    _errorTracker.isEnabled = errorTracking;

    userConsent = updated;
  }
}
