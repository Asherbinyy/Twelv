import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_background_view.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/services/navigation/navigation.dart';

class OnboardingWelcomeView extends StatelessWidget {
  final bool isOnboarding;

  const OnboardingWelcomeView({Key? key, this.isOnboarding = true}) : super(key: key);
  // region Build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Image.asset(context.theme.backImage.assetName),
          ),
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 45),
            child: Image(image: context.theme.logoHeaderImage),
          ))),
      body: AppBackgroundContainer(
        backgroundImage: context.theme.onboardingBackgroundImage,
        child: _OnboardingWelcomeContentView(
          isOnboarding: isOnboarding,
        ),
      ),
    );
  }

// endregion

}

// region Content view

class _OnboardingWelcomeContentView extends StatelessWidget {
  final bool isOnboarding;

  const _OnboardingWelcomeContentView({
    required this.isOnboarding,
    Key? key,
  }) : super(key: key);

  // region Build

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 40),
        child: Stack(
          children: <Widget>[
            //ignore: avoid-wrapping-in-padding
            Padding(
              //ignore: no-magic-number
              padding: const EdgeInsets.only(bottom: 55),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppText(Str.of(context).onboardingWelcomeTitle),
                    const SizedBox(height: 15),
                    AppText(Str.of(context).onboardingWelcomeDescription, type: AppTextType.body1),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AppButtonFilled(
                Str.of(context).onboardingWelcomeStart,
                onPressed: () => isOnboarding
                    ? navigator(NavigationService.root).popAllAndNavigateTo(GlobalRoutes.home)
                    : navigator(NavigationService.home).popUntil(HomeRoutes.settings),
              ),
            )
          ],
        ));
  }
// endregion

}

// endregion
