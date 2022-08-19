import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/model/documents/user_consent.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/services/network/api/document_client.dart';
import 'package:twelv/services/network/api/user_client.dart';

class GdprModel {
  final UserRestClient _userRestClient;
  final CurrentUserRepository _currentUserRepository;
  final DocumentClient _documentClient;

  GdprModel(
      {required UserRestClient userRestClient,
      required CurrentUserRepository currentUserRepository,
      required DocumentClient documentClient})
      : _userRestClient = userRestClient,
        _currentUserRepository = currentUserRepository,
        _documentClient = documentClient;

  Future<void> postConsent(UserConsent userConsent) async =>
      _userRestClient.postConsent(userConsent);

  Future<bool> isConsentDateTermsOfUseValid() async {
    final CurrentUser? currentUser = _currentUserRepository.currentUser;
    if (currentUser?.consentTermsOfUse != true) {
      return false;
    }

    final String dateString = await _documentClient.getTermsModificationDate();
    final DateTime? documentDate = DateTime.tryParse(dateString);
    final DateTime? userDate = currentUser?.consentTermsOfUseTimestamp;

    if (documentDate == null || userDate == null) {
      return false;
    }

    return userDate.isAfter(documentDate);
  }
}
