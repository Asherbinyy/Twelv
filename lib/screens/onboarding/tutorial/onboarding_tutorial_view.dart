import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_background_view.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/onboarding/tutorial/onboarding_tutorial.dart';
import 'package:twelv/services/navigation/navigation.dart';

class OnboardingTutorialView extends StatelessWidget {
  // region Properties

  final OnboardingTutorialScreenConfig pageConfig;

  const OnboardingTutorialView({required this.pageConfig});

  // endregion

  // region Build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: pageConfig.canGoBack
              ? IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Image.asset(context.theme.backImage.assetName),
                )
              : Container(),
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 45),
            child: Image(image: context.theme.logoHeaderImage),
          ))),
      body: AppBackgroundContainer(
        backgroundImage: pageConfig.step.backgroundImage(context),
        child: _OnboardingTutorialContentView(pageConfig: pageConfig),
      ),
    );
  }

// endregion

}

// region Content view

class _OnboardingTutorialContentView extends StatelessWidget {
  // region Properties

  final OnboardingTutorialScreenConfig pageConfig;

  const _OnboardingTutorialContentView({required this.pageConfig});

  // endregion

  // region Build

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Image(image: pageConfig.step.image(context)),
            Expanded(
              child: Container(
                color: context.theme.primaryColor,
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  children: <Widget>[
                    AppText(pageConfig.step.title(context),
                        type: context.deviceSizeClass == DeviceSizeClass.phoneSmall
                            ? AppTextType.title2
                            : AppTextType.title1,
                        lines: 2),
                    const SizedBox(height: 20),
                    AppText(pageConfig.step.description(context), type: AppTextType.body1),
                  ],
                ),
              ),
            ),
            Container(
              color: context.theme.primaryColor,
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: AppButtonFilled(Str.of(context).commonContinue,
                  onPressed: () => navigator(pageConfig.isOnboarding
                              ? NavigationService.onboarding
                              : NavigationService.home)
                          .navigateTo(
                        pageConfig.step.getNextScreenRoute(isOnboarding: pageConfig.isOnboarding),
                      )),
            ),
          ],
        ),
        pageConfig.step.imageGradient(context) ?? const SizedBox.shrink()
      ],
    );
  }
  // endregion

}

// endregion
