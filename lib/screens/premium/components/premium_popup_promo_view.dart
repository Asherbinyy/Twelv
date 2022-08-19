// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';

class PremiumPopupPromoView extends StatelessWidget {
  final String code;

  const PremiumPopupPromoView({
    required this.code,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          height: 50,
          color: context.theme.textDarkColor.withOpacity(0.1),
          child: Center(
            child: AppText(
              "${Str.of(context).premiumProductsPopupPromoCodeMessage} : $code",
              type: AppTextType.body1,
              color: context.theme.textDarkColor,
              align: TextAlign.center,
            ),
          ),
        ),
      );
}
