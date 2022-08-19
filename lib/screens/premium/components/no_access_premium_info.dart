// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/pricing/pricing.dart';
import 'package:twelv/model/pricing/product_price.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/screens/premium/bloc/pricing_bloc.dart';
import 'package:twelv/screens/premium/bloc/pricing_event.dart';
import 'package:twelv/screens/premium/components/no_access_button_field_view.dart';
import 'package:twelv/screens/premium/no_access_premium_bloc_parent.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';

enum PremiumPopupPage { info, subscriptions, credits }

extension PremiumPopupPageIAP on PremiumPopupPage {
  IAPType get iapType =>
      this == PremiumPopupPage.subscriptions ? IAPType.subscription : IAPType.product;

  static PremiumPopupPage fromIAPType(IAPType type) {
    switch (type) {
      case IAPType.product:
        return PremiumPopupPage.credits;
      case IAPType.subscription:
        return PremiumPopupPage.subscriptions;
    }
  }
}

enum PremiumPopupBackButton { hide, close, back }

extension PremiumPopupBackButtonHelper on PremiumPopupBackButton {
  AssetImage getImage(BuildContext context) {
    switch (this) {
      case PremiumPopupBackButton.hide:
      case PremiumPopupBackButton.back:
        return context.theme.backImage;
      case PremiumPopupBackButton.close:
        return context.theme.closeImage;
    }
  }
}

class NoAccessPremiumInfo extends StatelessWidget {
  final NoAccessType type;
  final Pricing? pricing;

  const NoAccessPremiumInfo({required this.type, this.pricing, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        padded(
            AppText(
              type.getTitle(context),
              align: TextAlign.center,
            ),
            top: 20),
        padded(
            AppText(
              type.getMessage(context),
              type: AppTextType.body2,
              align: TextAlign.center,
            ),
            top: 20),
        padded(
            NoAccessButtonFieldView(
              price: _calculatePrice(pricing?.subscription ?? <ProductPrice>[]),
              message: Str.of(context).noAccessPopupPremiumMessage,
              buttonTitle: Str.of(context).noAccessPopupPremiumButtonTitle,
              mainColor: context.theme.textDarkColor,
              onPressed: () => context
                  .read<PricingBloc>()
                  .add(const PricingEvent.changePage(page: PremiumPopupPage.subscriptions)),
            ),
            top: 30),
        padded(
            NoAccessButtonFieldView(
              price: _calculatePrice(pricing?.credit ?? <ProductPrice>[]),
              message: Str.of(context).noAccessPopupCreditsMessage,
              buttonTitle: Str.of(context).noAccessPopupCreditsButtonTitle,
              mainColor: context.theme.accentSecondaryColor,
              onPressed: () => context
                  .read<PricingBloc>()
                  .add(const PricingEvent.changePage(page: PremiumPopupPage.credits)),
            ),
            top: 15),
        padded(
            AppButtonText(
              Str.of(context).noAccessPopupNotNowButtonTitle,
              color: Colors.black.withOpacity(0.3),
              onPressed: () => Navigator.of(context).pop(),
            ),
            top: 20),
        const SizedBox(
          height: 20,
        ),
      ]);

  double? _calculatePrice(List<ProductPrice> products) => products.isEmpty
      ? null
      : products
          .reduce((ProductPrice current, ProductPrice next) =>
              current.lowestPrice < next.lowestPrice ? current : next)
          .lowestPrice;

  static void present(BuildContext context, NoAccessType type) {
    showDialog(
        context: context,
        routeSettings: const RouteSettings(name: "NoAccessPopup"),
        builder: (_) => NoAccessPremiumBlocParent(noAccessType: type));
  }

  static void presentBuyProducts(BuildContext context,
      {required IAPType type, required ProfileBloc profileBloc}) {
    showDialog(
        context: context,
        routeSettings: const RouteSettings(name: "NoAccessPopup"),
        builder: (_) => NoAccessPremiumBlocParent(
              noAccessType: NoAccessType.premiumSuperlike,
              startPage: PremiumPopupPageIAP.fromIAPType(type),
              profile: profileBloc,
            ));
  }
}
