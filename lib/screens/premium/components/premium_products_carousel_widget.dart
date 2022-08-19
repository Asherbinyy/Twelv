import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';
import 'package:twelv/screens/premium/components/premium_popup_carousel_element.dart';

class PremiumProductsCarouselWidget extends StatefulWidget {
  final PremiumPopupPage page;

  const PremiumProductsCarouselWidget({required this.page, Key? key}) : super(key: key);

  @override
  _PremiumProductsCarouselWidgetState createState() => _PremiumProductsCarouselWidgetState();
}

class _PremiumProductsCarouselWidgetState extends State<PremiumProductsCarouselWidget> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          CarouselSlider(
            items: _getCarouselElements(context),
            carouselController: _controller,
            options: CarouselOptions(
              height: 280,
              viewportFraction: 1,
              onPageChanged: (int index, _) => setState(() {
                _current = index;
              }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getCarouselElements(context)
                .asMap()
                .entries
                .map((MapEntry<int, PremiumPopupCarouselElement> entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 5.0,
                  height: 5.0,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key
                          ? context.theme.textDarkColor
                          : const Color(0xffb2b2b2)),
                ),
              );
            }).toList(),
          )
        ],
      );

  List<PremiumPopupCarouselElement> _getCarouselElements(BuildContext context) {
    switch (widget.page) {
      case PremiumPopupPage.subscriptions:
        return <PremiumPopupCarouselElement>[
          PremiumPopupCarouselElement(
              image: context.theme.promotionalWithoutLimit,
              title: Str.of(context).premiumSliderSubscriptionNo1Tittle,
              content: Str.of(context).premiumSliderSubscriptionNo1Message),
          PremiumPopupCarouselElement(
              image: context.theme.promotionalSuperlike,
              title: Str.of(context).premiumSliderSubscriptionNo2Tittle,
              content: Str.of(context).premiumSliderSubscriptionNo2Message),
          PremiumPopupCarouselElement(
              image: context.theme.promotionalProfilesLikesMe,
              title: Str.of(context).premiumSliderSubscriptionNo3Tittle,
              content: Str.of(context).premiumSliderSubscriptionNo3Message),
          PremiumPopupCarouselElement(
              image: context.theme.promotionalTotalityCompatibilities,
              title: Str.of(context).premiumSliderSubscriptionNo4Tittle,
              content: Str.of(context).premiumSliderSubscriptionNo4Message),
        ];
      case PremiumPopupPage.credits:
        return <PremiumPopupCarouselElement>[
          PremiumPopupCarouselElement(
              image: context.theme.promotionalWithoutLimit,
              title: Str.of(context).premiumSliderCreditsNo1Title,
              content: Str.of(context).premiumSliderCreditsNo1Message),
          PremiumPopupCarouselElement(
              image: context.theme.promotionalSuperlike,
              title: Str.of(context).premiumSliderCreditsNo2Title,
              content: Str.of(context).premiumSliderCreditsNo2Message),
          PremiumPopupCarouselElement(
              image: context.theme.promotionalProfilesLikesMe,
              title: Str.of(context).premiumSliderCreditsNo3Title,
              content: Str.of(context).premiumSliderCreditsNo3Message),
          PremiumPopupCarouselElement(
              image: context.theme.promotionalTotalityCompatibilities,
              title: Str.of(context).premiumSliderCreditsNo4Title,
              content: Str.of(context).premiumSliderCreditsNo4Message),
        ];
      case PremiumPopupPage.info:
        return <PremiumPopupCarouselElement>[];
    }
  }
}
