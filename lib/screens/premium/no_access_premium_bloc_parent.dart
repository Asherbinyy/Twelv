import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/model/pricing/pricing.dart';
import 'package:twelv/model/pricing/product_price.dart';
import 'package:twelv/model/profile/no_access_type.dart';
import 'package:twelv/screens/premium/bloc/pricing_bloc.dart';
import 'package:twelv/screens/premium/bloc/pricing_event.dart';
import 'package:twelv/screens/premium/bloc/pricing_state.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';
import 'package:twelv/screens/premium/components/no_access_premium_products.dart';
import 'package:twelv/screens/premium/components/premium_popup_container_widget.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';

class NoAccessPremiumBlocParent extends StatelessWidget {
  final NoAccessType noAccessType;
  final PremiumPopupPage? startPage;
  final ProfileBloc? profile;

  const NoAccessPremiumBlocParent({
    required this.noAccessType,
    this.startPage,
    this.profile,
    Key? key,
  }) : super(key: key);

  PremiumPopupBackButton _getBackButton() =>
      startPage == null ? PremiumPopupBackButton.back : PremiumPopupBackButton.close;

  @override
  Widget build(BuildContext context) => BlocProvider<PricingBloc>(
        create: (_) => DependenciesContainer().get<PricingBloc>()
          ..add(startPage == null
              ? const PricingEvent.fetch()
              : PricingEvent.changePage(page: startPage!)),
        child: BlocConsumer<PricingBloc, PricingState>(
          builder: (BuildContext context, PricingState state) {
            if (state is Info) {
              return PremiumPopupContainerWidget(
                  backType: PremiumPopupBackButton.close,
                  child: NoAccessPremiumInfo(
                    type: noAccessType,
                    pricing: state.pricing,
                  ));
            } else if (state is Products) {
              return PremiumPopupContainerWidget(
                  backType: _getBackButton(),
                  child: NoAccessPremiumProducts(
                    noAccessType: noAccessType,
                    page: state.page,
                    pricing: state.pricing,
                    profile: profile,
                  ));
            }
            return _getInitialPage(context);
          },
          listener: (BuildContext context, PricingState state) {
            manageLoadingView(context, show: state is Loading);
            if (state is ApiError) {
              showErrorOverlay(state.error, context: context);
            }
          },
        ),
      );

  Widget _getInitialPage(BuildContext context) => PremiumPopupContainerWidget(
      backType: PremiumPopupBackButton.close,
      child: startPage == null
          ? NoAccessPremiumInfo(
              type: noAccessType,
            )
          : NoAccessPremiumProducts(
              noAccessType: noAccessType,
              page: startPage!,
              profile: profile,
              pricing: Pricing(subscription: <ProductPrice>[], credit: <ProductPrice>[])));
}
