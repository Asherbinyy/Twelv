// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/model/pricing/product_price.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';

class PremiumProductView extends StatelessWidget {
  static double get height => 120;
  final String productId;
  final String price;
  final String? discount;
  final String name;
  final ValueChanged<String>? onSelectedProductId;

  factory PremiumProductView.product(ProductPrice productPrice,
          {ValueChanged<String>? onSelectedProductId}) =>
      PremiumProductView(
        productId: productPrice.productId ?? "",
        price: productPrice.price?.toStringAsFixed(2) ?? "",
        name: productPrice.name ?? "",
        discount: productPrice.discount?.toStringAsFixed(2),
        onSelectedProductId: onSelectedProductId,
      );

  factory PremiumProductView.iapProduct(InAppPurchaseItem item,
          {ValueChanged<String>? onSelectedProductId}) =>
      PremiumProductView(
        productId: item.productId,
        price: item.localizedPrice ?? "",
        name: item.title ?? "",
        discount: null,
        onSelectedProductId: onSelectedProductId,
      );

  const PremiumProductView({
    required this.productId,
    required this.price,
    required this.name,
    this.discount,
    this.onSelectedProductId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => onSelectedProductId?.call(productId),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            height: PremiumProductView.height,
            color: context.theme.accentSecondaryColor.withOpacity(0.1),
            child: Center(
              child: Column(
                children: <Widget>[
                  if (discount != null)
                    Text(
                      "$discount€",
                      style: context.theme.textTheme.headline1!
                          .copyWith(fontSize: 15, decoration: TextDecoration.lineThrough),
                      textAlign: TextAlign.center,
                    ),
                  AppText(
                    "$price€",
                    type: AppTextType.title2,
                    align: TextAlign.center,
                  ),
                  padded(
                      AppText(
                        name,
                        type: AppTextType.body1,
                        color: context.theme.textDarkColor,
                        align: TextAlign.center,
                      ),
                      top: 5),
                ],
              ),
            ),
          ),
        ),
      );
}
