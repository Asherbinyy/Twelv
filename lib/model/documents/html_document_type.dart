import 'package:flutter/material.dart';
import 'package:twelv/generated/l10n.dart';

enum HtmlDocumentType { termsOfUse, privacyPolicy, consentPolicy }

extension HtmlDocumentTypeExtension on HtmlDocumentType {
  String get apiValue {
    switch (this) {
      case HtmlDocumentType.termsOfUse:
        return "terms_of_use";
      case HtmlDocumentType.privacyPolicy:
        return "privacy_policy";
      case HtmlDocumentType.consentPolicy:
        return "consent_policy";
    }
  }

  String titleForDocument(BuildContext context) {
    switch (this) {
      case HtmlDocumentType.termsOfUse:
        return Str.of(context).documentTermOfUseTitle;
      case HtmlDocumentType.privacyPolicy:
        return Str.of(context).documentPrivacyPolicyTitle;
      case HtmlDocumentType.consentPolicy:
        return Str.of(context).documentConsentPageTitle;
    }
  }

  static HtmlDocumentType? fromUrl(String? url) {
    if (url == null) {
      return null;
    }
    for (final HtmlDocumentType type in HtmlDocumentType.values) {
      if (type.apiValue == url) {
        return type;
      }
    }
    return null;
  }
}
