import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/routes.dart';

enum OnboardingTutorial { screen1, screen2, screen3, screen4, screen5 }

class OnboardingTutorialScreenConfig {
  final OnboardingTutorial step;
  final bool isOnboarding;

  bool get canGoBack => isOnboarding ? step != OnboardingTutorial.screen4 : true;

  OnboardingTutorialScreenConfig({required this.step, this.isOnboarding = true});
}

extension OnboardingTutorialRoutes on OnboardingTutorial {
  String getNextScreenRoute({required bool isOnboarding}) {
    if (isOnboarding) {
      switch (this) {
        case OnboardingTutorial.screen1:
          return OnboardingRoutes.tutorial2;
        case OnboardingTutorial.screen2:
          return OnboardingRoutes.birthData;
        case OnboardingTutorial.screen3:
          return OnboardingRoutes.tutorial4;
        case OnboardingTutorial.screen4:
          return OnboardingRoutes.tutorial5;
        case OnboardingTutorial.screen5:
          return OnboardingRoutes.welcome;
      }
    } else {
      switch (this) {
        case OnboardingTutorial.screen1:
          return HomeRoutes.tutorial2;
        case OnboardingTutorial.screen2:
          return HomeRoutes.tutorial4;
        case OnboardingTutorial.screen3:
          return HomeRoutes.tutorial4;
        case OnboardingTutorial.screen4:
          return HomeRoutes.tutorial5;
        case OnboardingTutorial.screen5:
          return HomeRoutes.welcome;
      }
    }
  }
}

extension OnboardingTutorialAssets on OnboardingTutorial {
  String title(BuildContext context) {
    switch (this) {
      case OnboardingTutorial.screen1:
        return Str.of(context).onboardingTutorial1Title;
      case OnboardingTutorial.screen2:
        return Str.of(context).onboardingTutorial2Title;
      case OnboardingTutorial.screen3:
        return Str.of(context).onboardingTutorial3Title;
      case OnboardingTutorial.screen4:
        return Str.of(context).onboardingTutorial4Title;
      case OnboardingTutorial.screen5:
        return Str.of(context).onboardingTutorial5Title;
    }
  }

  String description(BuildContext context) {
    switch (this) {
      case OnboardingTutorial.screen1:
        return Str.of(context).onboardingTutorial1Description;
      case OnboardingTutorial.screen2:
        return Str.of(context).onboardingTutorial2Description;
      case OnboardingTutorial.screen3:
        return Str.of(context).onboardingTutorial3Description;
      case OnboardingTutorial.screen4:
        return Str.of(context).onboardingTutorial4Description;
      case OnboardingTutorial.screen5:
        return Str.of(context).onboardingTutorial5Description;
    }
  }

  AssetImage backgroundImage(BuildContext context) {
    switch (this) {
      case OnboardingTutorial.screen1:
        return context.theme.onboardingTutorial1BackgroundImage;
      case OnboardingTutorial.screen2:
        return context.theme.onboardingTutorial2BackgroundImage;
      case OnboardingTutorial.screen3:
        return context.theme.onboardingTutorial3BackgroundImage;
      case OnboardingTutorial.screen4:
        return context.theme.onboardingTutorial4BackgroundImage;
      case OnboardingTutorial.screen5:
        return context.theme.onboardingTutorial5BackgroundImage;
    }
  }

  AssetImage image(BuildContext context) {
    switch (this) {
      case OnboardingTutorial.screen1:
        return context.theme.onboardingTutorial1Image;
      case OnboardingTutorial.screen2:
        return context.theme.onboardingTutorial2Image;
      case OnboardingTutorial.screen3:
        return context.theme.onboardingTutorial3Image;
      case OnboardingTutorial.screen4:
        return context.theme.onboardingTutorial4Image;
      case OnboardingTutorial.screen5:
        return context.theme.onboardingTutorial5Image;
    }
  }

  Image? imageGradient(BuildContext context) =>
      this == OnboardingTutorial.screen4 || this == OnboardingTutorial.screen5
          ? Image(
              width: double.infinity,
              image: context.theme.onboardingTutorialGradientImage,
              fit: BoxFit.cover,
            )
          : null;
}
