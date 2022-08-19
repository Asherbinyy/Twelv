import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/services/analytics/app_install_tracker.dart';
import 'package:twelv/services/authentication/authentication_service.dart';
import 'package:twelv/utils/crypto_utils.dart';

class AuthenticationModel implements AuthenticationService {
  final FirebaseAuth _auth;
  final FacebookAuth _facebookAuth;
  final CryptoUtils _cryptoUtils;
  final AppInstallTracker _appInstallTracker;
  final StreamController<AuthenticationServiceState> _streamController =
      StreamController<AuthenticationServiceState>.broadcast();
  late StreamSubscription<User?> _firebaseSub;
  String? _pendingVerificationId;
  int? _resendingCodeId;
  String? _pendingPhoneNumber;

  AuthenticationModel(this._auth, this._facebookAuth, this._cryptoUtils, this._appInstallTracker) {
    _ensurePreviousInstallationDataAreCleared();
    _firebaseSub = _observeChangesInFirebase();
  }

  // region implementation of AuthenticationService contract

  @override
  Stream<AuthenticationServiceState> get authenticationStateStream => _streamController.stream;

  @override
  Future<void> signOut() => _auth.signOut();

  @override
  Future<void> tryToRestoreAuthenticationToken() async => _auth.currentUser?.getIdToken(true);

  @override
  Future<void> runAuthenticateByFacebookFlow() async =>
      _runFacebookAuthenticationAsStreamOfEvents();

  @override
  Future<void> runAuthenticateByAppleFlow() async => _runAppleAuthenticationAsStreamOfEvents();

  @override
  Future<void> runAuthenticateByPhoneFlow(String phoneNumber) =>
      _runPhoneNumVerificationAsStreamOfEvents(phoneNumber);

  @override
  void resendSmsCode() {
    if (_pendingPhoneNumber != null) {
      _runPhoneNumVerificationAsStreamOfEvents(_pendingPhoneNumber!,
          forceResendingToken: _resendingCodeId);
    } else {
      logger().e("Try to resend SMS code when pending Phone Number is: ${_pendingPhoneNumber}");
    }
  }

  @override
  void confirmPhoneNumber(String smsCode) {
    if (_pendingVerificationId == null) {
      logger().e("Cannot verify sms code $smsCode: there is no pending verification session");
      return;
    }

    final AuthCredential credentials =
        PhoneAuthProvider.credential(verificationId: _pendingVerificationId!, smsCode: smsCode);

    _authenticateWith(credential: credentials);
  }

  // endregion

  // region AuthenticationModel public API

  Future<void> dispose() => _firebaseSub.cancel();

  // endregion

  // region Utils

  void _ensurePreviousInstallationDataAreCleared() {
    if (_appInstallTracker.isFirstAppSession) {
      signOut();
    }
  }

  StreamSubscription<User?> _observeChangesInFirebase() => _auth.userChanges().listen((User? user) {
        _resetPendingState();
        if (user == null) {
          logger().d('User state changed: User has been logged out');
          _streamController
              .add(const AuthenticationServiceState.error(AuthenticationError.tokenLost));
        } else {
          logger().d('User state changed: New user is out there!');
          user
              .getIdToken()
              .then((String authToken) =>
                  _streamController.add(AuthenticationServiceState.authTokenReceived(authToken)))
              .onError((Object error, _) => _streamController
                  .add(AuthenticationServiceState.error(_mapFirebaseError(error))));
        }
      });

  void _resetPendingState() {
    _pendingVerificationId = null;
    _resendingCodeId = null;
    _pendingPhoneNumber = null;
  }

  Future<void> _runPhoneNumVerificationAsStreamOfEvents(String phoneNumber,
          {int? forceResendingToken}) =>
      _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        forceResendingToken: forceResendingToken,
        verificationCompleted: (PhoneAuthCredential credential) {
          // requirement of US: we don't let Firebase login Android users silently
        },
        verificationFailed: (FirebaseAuthException e) {
          logger().e('Firebase verificationFailed. Message: ${e.message}, code: ${e.code}', e,
              e.stackTrace);
          _streamController.add(AuthenticationServiceState.error(_mapFirebaseError(e)));
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          logger().v('Code sent: $verificationId, $forceResendingToken');
          _resendingCodeId = forceResendingToken;
          _pendingVerificationId = verificationId;
          _pendingPhoneNumber = phoneNumber;
          _streamController.add(const AuthenticationServiceState.needsConfirmation());
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // requirement of US: we don't let Firebase login Android users silently
        },
      );

  Future<void> _runFacebookAuthenticationAsStreamOfEvents() async {
    final LoginResult result = await _facebookAuth.login();
    if (result.status == LoginStatus.success && result.accessToken?.token.isNotEmpty == true) {
      final OAuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.token);
      await _authenticateWith(credential: credential);
    } else if (result.status == LoginStatus.cancelled) {
      _streamController.add(const AuthenticationServiceState.canceled());
    } else if (result.status == LoginStatus.failed) {
      logger().e("Failed to get a Facebook credential", result);
      _streamController.add(const AuthenticationServiceState.error(AuthenticationError.unknown));
    }
  }

  Future<void> _runAppleAuthenticationAsStreamOfEvents() async {
    final String rawNonce = _cryptoUtils.generateNonce();
    final String nonce = _cryptoUtils.sha256ofString(rawNonce);
    try {
      final AuthorizationCredentialAppleID appleCredential =
          await SignInWithApple.getAppleIDCredential(
        scopes: <AppleIDAuthorizationScopes>[
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );
      final OAuthCredential credential = OAuthProvider("apple.com")
          .credential(idToken: appleCredential.identityToken, rawNonce: rawNonce);
      await _authenticateWith(credential: credential);
    } catch (error) {
      logger().e("Failed to get a Apple credential", error);
      if (error is SignInWithAppleAuthorizationException &&
          error.code == AuthorizationErrorCode.canceled) {
        _streamController.add(const AuthenticationServiceState.canceled());
      } else {
        _streamController.add(const AuthenticationServiceState.error(AuthenticationError.unknown));
      }
    }
  }

  Future<void> _authenticateWith({required AuthCredential credential}) async {
    try {
      await _auth.signInWithCredential(credential);
    } on FirebaseException catch (e) {
      logger().e("Failed to get a token", e);
      _streamController.add(AuthenticationServiceState.error(_mapFirebaseError(e)));
    }
  }

  AuthenticationError _mapFirebaseError(Object e) {
    if (e is! FirebaseException) {
      return AuthenticationError.unknown;
    }
    switch (e.code) {
      case "invalid-credential":
      case "invalid-phone-number":
        return AuthenticationError.invalidPhoneNum;
      case "invalid-verification-code":
      case "invalid-verification-id":
        return AuthenticationError.wrongSmsCode;
      case "account-exists-with-different-credential":
      case "user-disabled":
      case "user-not-found":
      case "operation-not-allowed":
        return AuthenticationError.userIssues;
      case "session-expired":
        return AuthenticationError.verificationTimeout;
      case "too-many-requests":
        return AuthenticationError.temporarilyBlocked;
      default:
        return AuthenticationError.unknown;
    }
  }

// endregion
}
