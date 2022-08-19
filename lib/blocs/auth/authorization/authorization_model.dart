import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/blocs/auth/authorization/access_token_repository.dart';
import 'package:twelv/blocs/auth/authorization/models/access_token_response.dart';
import 'package:twelv/blocs/auth/authorization/models/exchange_tokens_request.dart';
import 'package:twelv/model/user/current_user_response.dart';
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/errors/error_tracker.dart';
import 'package:twelv/services/firebase/firebase_messaging.dart';
import 'package:twelv/services/network/api/authorization_client.dart';
import 'package:twelv/services/network/api/user_client.dart';

class AuthorizationModel {
  final AccessTokenRepository _accessTokenRepository;
  final AuthorizationRestClient _authRestClient;
  final UserRestClient _userRestClient;
  final CurrentUserRepository _userRepository;
  final ErrorTracker _errorTracker;
  final AnalyticsTracker _analyticsTracker;
  final FirebaseMessagingService _firebaseMessagingService;

  AuthorizationModel(
      this._accessTokenRepository,
      this._authRestClient,
      this._userRestClient,
      this._userRepository,
      this._errorTracker,
      this._analyticsTracker,
      this._firebaseMessagingService);

  void sessionHasFinished() {
    _accessTokenRepository.clear();
    _userRepository.clear();
  }

  Future<AccessTokenResponse> exchangeAuthenticationToken(String token) =>
      _authRestClient.exchangeAuthToken(ExchangeTokensRequest(authenticationToken: token));

  Future<void> storeCurrentUser() async {
    final CurrentUserResponse response = await _userRestClient.getCurrentUser();
    _errorTracker.isEnabled = response.data.consentFirebaseAnalytics ?? false;
    _analyticsTracker.isEnabled = response.data.consentFirebaseCrashlytics ?? false;

    _userRepository.currentUser = response.data;
  }

  Future<void> reloadNotificationsToken() async {
    if (_userRepository.currentUser?.notificationSettings?.isEnabled == true) {
      final String? deviceToken = await _firebaseMessagingService.tryToGetNotificationsToken();
      final String? currentToken = _userRepository.currentUser?.notificationToken;

      if (deviceToken != currentToken && deviceToken != null) {
        await _userRestClient.updateProfile(notificationsToken: deviceToken);
      }
    }
    return Future<void>.value();
  }
}
