// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/model/pricing/product_price.dart';
import 'package:twelv/screens/premium/components/premium_product_view.dart';
import 'package:twelv/services/iap/bloc/iap_bloc.dart';
import 'package:twelv/services/iap/bloc/iap_event.dart';

class PremiumProductPriceView extends StatelessWidget {
  final List<ProductPrice> productPrice;

  const PremiumProductPriceView({
    required this.productPrice,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: PremiumProductView.height * 2 + 15,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _getProductView(context, 0),
                const SizedBox(
                  width: 15,
                ),
                _getProductView(context, 1),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                _getProductView(context, 2),
                const SizedBox(
                  width: 15,
                ),
                _getProductView(context, 3),
              ],
            ),
          ],
        ),
      );

  Widget _getProductView(BuildContext context, int position) => position >= productPrice.length
      ? const Spacer()
      : Expanded(
          child: PremiumProductView.product(
          productPrice[position],
          onSelectedProductId: (String productId) =>
              context.read<IAPBloc>().add(IAPEvent.buy(productId: productId)),
        ));
}
