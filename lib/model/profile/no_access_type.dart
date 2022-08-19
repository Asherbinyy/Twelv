// ignore_for_file: no-equal-arguments

import 'package:flutter/material.dart';
import 'package:twelv/generated/l10n.dart';

enum NoAccessType {
  freeExplorer,
  freeSuperlike,
  premiumSuperlike,
  blurredImageLikesMe,
  compatibilitiesDisabled,
}

enum NoAccessLevel { canUseCredit, blocked }

class NoAccessInfo {
  final NoAccessType type;
  final NoAccessLevel level;

  NoAccessInfo({required this.type, required this.level});
}

extension NoAccessHelper on NoAccessType {
  String getTitle(BuildContext context) {
    switch (this) {
      case NoAccessType.freeExplorer:
        return Str.of(context).noAccessPopupFreeExplorerTitle;
      case NoAccessType.freeSuperlike:
        return Str.of(context).noAccessPopupFreeSuperlikeTitle;
      case NoAccessType.premiumSuperlike:
        return Str.of(context).noAccessPopupPremiumSuperlikeTitle;
      case NoAccessType.blurredImageLikesMe:
        return Str.of(context).noAccessPopupBlurredImageLikesTitle;
      case NoAccessType.compatibilitiesDisabled:
        return Str.of(context).noAccessPopupCompatibilitiesDisabledTitle;
    }
  }

  String getAnaliticsTag() {
    switch (this) {
      case NoAccessType.freeExplorer:
        return "max_profile";
      case NoAccessType.freeSuperlike:
      case NoAccessType.premiumSuperlike:
        return "max_superlike";
      case NoAccessType.blurredImageLikesMe:
        return "unblur_image";
      case NoAccessType.compatibilitiesDisabled:
        return "score";
    }
  }

  String getMessage(BuildContext context) {
    switch (this) {
      case NoAccessType.freeExplorer:
        return Str.of(context).noAccessPopupFreeExplorerMessage;
      case NoAccessType.freeSuperlike:
        return Str.of(context).noAccessPopupFreeSuperlikeMessage;
      case NoAccessType.premiumSuperlike:
        return Str.of(context).noAccessPopupPremiumSuperlikeMessage;
      case NoAccessType.blurredImageLikesMe:
        return Str.of(context).noAccessPopupBlurredImageLikesMessage;
      case NoAccessType.compatibilitiesDisabled:
        return Str.of(context).noAccessPopupCompatibilitiesDisabledMessage;
    }
  }

  String getMessageConfirmationSpendCredit(BuildContext context) {
    switch (this) {
      case NoAccessType.freeExplorer:
        return Str.of(context).standardAccountSpendCreditPerSwipeAlertMessage;
      case NoAccessType.freeSuperlike:
        return Str.of(context).standardAccountSpendCreditPerSuperlikeAlertMessage;
      case NoAccessType.premiumSuperlike:
        return Str.of(context).premiumAccountSpendCreditPerSuperlikeAlertMessage;
      case NoAccessType.blurredImageLikesMe:
        return Str.of(context).freeAccountSpendCreditPerBlurredAlertMessage;
      case NoAccessType.compatibilitiesDisabled:
        //There is no message for confirmation
        return "";
    }
  }
}
