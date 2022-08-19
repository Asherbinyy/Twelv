import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/dialog/options_dialog_view.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_html_action.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/pricing/payment_finalize_consumed.dart';
import 'package:twelv/model/pricing/pricing.dart';
import 'package:twelv/model/pricing/product_price.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';
import 'package:twelv/screens/premium/components/premium_popup_container_widget.dart';
import 'package:twelv/screens/premium/components/premium_popup_promo_view.dart';
import 'package:twelv/screens/premium/components/premium_product_price_view.dart';
import 'package:twelv/screens/premium/components/premium_products_carousel_widget.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/services/iap/bloc/iap_bloc.dart';
import 'package:twelv/services/iap/bloc/iap_event.dart';
import 'package:twelv/services/iap/bloc/iap_state.dart';

class NoAccessPremiumProducts extends StatelessWidget {
  final NoAccessType noAccessType;
  final Pricing? pricing;
  final PremiumPopupPage page;
  final ProfileBloc? profile;

  const NoAccessPremiumProducts(
      {required this.noAccessType, required this.page, this.pricing, this.profile, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<IAPBloc>(
        create: (_) => DependenciesContainer().get<IAPBloc>()
          ..profileBloc = profile
          ..add(const IAPEvent.startObserving()),
        child: BlocConsumer<IAPBloc, IAPState>(
          listener: (BuildContext context, IAPState state) {
            manageLoadingView(context, show: state is Loading);
            if (state is Error) {
              if (state.error is Exception) {
                showErrorOverlay(state.error as Exception, context: context);
              } else {
                showErrorMessageOverlay(Str.of(context).paymentErrorMessage, context: context);
              }
            } else if (state is PurchaseFinished) {
              final bool isAlreadyConsumed = state.backendResponse is PaymentFinalizeConsumed;
              logger().d(
                "IAPPopup Finished payment for ${state.response?.productId} receipt: ${state.response?.receipt}, isConsumed: ${isAlreadyConsumed}",
              );
              showOptionsDialog(
                  context,
                  Str.of(context).paymentDialogTitle,
                  isAlreadyConsumed
                      ? "${Str.of(context).paymentSuccessRestoredMessage} 1"
                      : Str.of(context).paymentSuccessMessage,
                  <ActionDialogData>[
                    ActionDialogData(Str.of(context).commonOk, () => Navigator.of(context).pop()),
                  ]);
            } else if (state is PurchaseError) {
              logger().e(
                "IAPPopup Error Code: ${state.error.code} [${state.error.responseCode}] Message: ${state.error.message}",
              );
              showOptionsDialog(context, Str.of(context).paymentDialogTitle,
                  Str.of(context).paymentErrorMessage, <ActionDialogData>[
                ActionDialogData(Str.of(context).commonOk, null),
              ]);
            } else if (state is PurchaseRestored) {
              logger().d("IAPPopup Restored payments count: ${state.count}");
              showOptionsDialog(
                  context,
                  Str.of(context).paymentDialogTitle,
                  state.count == 0
                      ? Str.of(context).paymentNoneRestoredMessage
                      : "${Str.of(context).paymentSuccessRestoredMessage} ${state.count}",
                  <ActionDialogData>[
                    ActionDialogData(Str.of(context).commonOk, null),
                  ]);
            }
          },
          buildWhen: (_, IAPState state) => state is Initial,
          builder: (BuildContext context, _) => _buildContent(context),
        ),
      );

  Widget _buildContent(BuildContext context) => Column(
        children: <Widget>[
          PremiumProductsCarouselWidget(
            page: page,
          ),
          if (_getPromoCode() != null)
            padded(PremiumPopupPromoView(code: _getPromoCode()!), top: 15),
          padded(PremiumProductPriceView(productPrice: _getProductPrices()), top: 15),
          Center(
            child: AppTextHtmlAction(
              text: Str.of(context).premiumProductsPopupTermsMessage,
              type: AppTextType.body2,
              textAlign: TextAlign.center,
            ),
          ),
          AppButtonFilled(
            Str.of(context).paymentRestorePurchasesButton,
            onPressed: () => context.read<IAPBloc>().add(const IAPEvent.checkConsume()),
          ),
          PremiumPopupContainerWidget.cancelButton(context),
          const SizedBox(
            height: 20,
          ),
        ],
      );

  String? _getPromoCode() => page == PremiumPopupPage.subscriptions
      ? pricing?.subscription
          ?.firstWhereOrNull((ProductPrice element) => element.code != null)
          ?.code
      : pricing?.credit?.firstWhereOrNull((ProductPrice element) => element.code != null)?.code;

  List<ProductPrice> _getProductPrices() => page == PremiumPopupPage.subscriptions
      ? pricing?.subscription ?? <ProductPrice>[]
      : pricing?.credit ?? <ProductPrice>[];
}
