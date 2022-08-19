class AccessTokenRepository {
  String? accessToken;

  bool get isSessionActive => accessToken != null;

  void clear() {
    accessToken = null;
  }
}
