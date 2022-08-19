import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';

class PremiumActionsErrorResolver {
  Future<bool?> willSpendCreditToResolveError(Exception e,
      {required BuildContext context,
      required bool isSuperlike,
      required bool? useCredit,
      required CurrentUser currentUser}) async {
    final NoAccessInfo? noAccessInfo = _checkFromError(e,
        isSuperlike: isSuperlike, currentUser: currentUser, useCredit: useCredit);

    if (noAccessInfo != null) {
      switch (noAccessInfo.level) {
        case NoAccessLevel.blocked:
          NoAccessPremiumInfo.present(context, noAccessInfo.type);
          return false;
        case NoAccessLevel.canUseCredit:
          final bool? decide = await askSpendCreditPer(noAccessInfo.type, context: context);
          if (decide == true) {
            //Send again same event with use credit = true
            return true;
          } else {
            NoAccessPremiumInfo.present(context, noAccessInfo.type);
            return false;
          }
      }
    } else {
      return null;
    }
  }

  Future<bool?> askSpendCreditPer(NoAccessType type, {required BuildContext context}) =>
      showConfirmationDialog(
        context,
        title: Str.of(context).standardAccountSpendCreditAlertTitle,
        question: type.getMessageConfirmationSpendCredit(context),
        okText: Str.of(context).commonPopupOkButtonTitle,
        cancelText: Str.of(context).commonPopupCancelButtonTitle,
      );

  NoAccessInfo? _checkFromError(Exception e,
      {required bool isSuperlike, required bool? useCredit, required CurrentUser currentUser}) {
    if (!is403PremiumActionError(e)) {
      return null;
    }

    //Check type of blocked action
    final NoAccessType type = isSuperlike
        ? currentUser.isPremium
            ? NoAccessType.premiumSuperlike
            : NoAccessType.freeSuperlike
        : NoAccessType.freeExplorer;

    //Check if user have credits
    return currentUser.hasCredits
        ? useCredit == true
            ?
            //User agree to spend credit per action
            //But we still get 403 from api - assume that app have wrong credit number
            NoAccessInfo(type: type, level: NoAccessLevel.blocked)
            :
            //Ask user if he want to spend credit to make action
            NoAccessInfo(type: type, level: NoAccessLevel.canUseCredit)
        : NoAccessInfo(type: type, level: NoAccessLevel.blocked);
  }

  bool is403PremiumActionError(Exception e) =>
      e is DioError && e.response?.statusCode == 403; // ignore: no-magic-number
}
