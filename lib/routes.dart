// ignore_for_file: long-method

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/model/onboarding/birth_data_view_data.dart';
import 'package:twelv/model/onboarding/description_edit_view_settings.dart';
import 'package:twelv/model/onboarding/onboarding_gender_view_data.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/screens/blank/blank_view.dart';
import 'package:twelv/screens/demo/demo_view.dart';
import 'package:twelv/screens/gdpr/gdpr_screen.dart';
import 'package:twelv/screens/home/chat/components/chat_channel_view.dart';
import 'package:twelv/screens/home/home_view.dart';
import 'package:twelv/screens/home/home_view_bloc_parent.dart';
import 'package:twelv/screens/likes/likes_list_bloc_parent.dart';
import 'package:twelv/screens/login/login_view_bloc_parent.dart';
import 'package:twelv/screens/login/sms/verify_sms_code_view.dart';
import 'package:twelv/screens/login/welcome/login_welcome_bloc_parent.dart';
import 'package:twelv/screens/onboarding/birthdata/onboarding_birth_data_view.dart';
import 'package:twelv/screens/onboarding/birthdata/onboarding_birth_data_view_bloc_parent.dart';
import 'package:twelv/screens/onboarding/cookies/cookies_screen_bloc_parent.dart';
import 'package:twelv/screens/onboarding/description/description_edit_view.dart';
import 'package:twelv/screens/onboarding/gender/onboarding_gender_view.dart';
import 'package:twelv/screens/onboarding/location/location_permission_view.dart';
import 'package:twelv/screens/onboarding/name/onboarding_name_view.dart';
import 'package:twelv/screens/onboarding/notifications/onboarding_notifications_bloc_parent.dart';
import 'package:twelv/screens/onboarding/onboarding_view_bloc_parent.dart';
import 'package:twelv/screens/onboarding/photos/photos_edit_view.dart';
import 'package:twelv/screens/onboarding/tutorial/onboarding_tutorial.dart';
import 'package:twelv/screens/onboarding/tutorial/onboarding_tutorial_view.dart';
import 'package:twelv/screens/onboarding/welcome/onboarding_welcome_view.dart';
import 'package:twelv/screens/onboarding/zodiac/onboarding_zodiac_view.dart';
import 'package:twelv/screens/onboarding/zodiac/onboarding_zodiac_view_bloc_parent.dart';
import 'package:twelv/screens/profile/edit/profile_edit_view.dart';
import 'package:twelv/screens/settings/notifications/settings_notifications_bloc_parent.dart';
import 'package:twelv/screens/settings/privacy/settings_privacy_view.dart';
import 'package:twelv/screens/settings/settings_view.dart';
import 'package:twelv/screens/splash/splashscreen_view.dart';

class GlobalRoutes {
  static const String splash = "splash";
  static const String gdpr = "gdpr";
  static const String login = "login";
  static const String onboarding = "onboarding";
  static const String home = "home";
  static const String demo = "demo";
  static const String blank = "blank";
  static const String deepLink = "/deeplink";
}

class HomeRoutes {
  static const String main = "${GlobalRoutes.home}/main";
  static const String zodiac = "${GlobalRoutes.home}/zodiac";
  static const String likes = "${GlobalRoutes.home}/likes";
  static const String chatChannel = "${GlobalRoutes.home}/chat-channel";
  static const String settings = "${GlobalRoutes.home}/settings";
  static const String settingsPrivacyPreferences =
      "${GlobalRoutes.home}/settings-privacy-preferences";
  static const String profileEdit = "${GlobalRoutes.home}/profil-edit";
  static const String descriptionEdit = "${GlobalRoutes.home}/description-edit";
  static const String notificationsSettings = "${GlobalRoutes.home}/notificationSettings";
  static const String welcome = "${GlobalRoutes.home}/welcome";
  static const String tutorial1 = "${GlobalRoutes.home}/tutorial1";
  static const String tutorial2 = "${GlobalRoutes.home}/tutorial2";
  static const String tutorial3 = "${GlobalRoutes.home}/tutorial3";
  static const String tutorial4 = "${GlobalRoutes.home}/tutorial4";
  static const String tutorial5 = "${GlobalRoutes.home}/tutorial5";
}

class LoginRoutes {
  static const String welcome = "${GlobalRoutes.login}/welcome";
  static const String smsVerify = "${GlobalRoutes.login}/sms";
}

class OnboardingRoutes {
  static const String name = "${GlobalRoutes.onboarding}/name";
  static const String birthData = "${GlobalRoutes.onboarding}/birthData";
  static const String zodiac = "${GlobalRoutes.onboarding}/zodiac";
  static const String gender = "${GlobalRoutes.onboarding}/gender";
  static const String photos = "${GlobalRoutes.onboarding}/photos";
  static const String description = "${GlobalRoutes.onboarding}/description";
  static const String location = "${GlobalRoutes.onboarding}/location";
  static const String notifications = "${GlobalRoutes.onboarding}/notifications";
  static const String tutorial1 = "${GlobalRoutes.onboarding}/tutorial1";
  static const String tutorial2 = "${GlobalRoutes.onboarding}/tutorial2";
  static const String tutorial3 = "${GlobalRoutes.onboarding}/tutorial3";
  static const String tutorial4 = "${GlobalRoutes.onboarding}/tutorial4";
  static const String tutorial5 = "${GlobalRoutes.onboarding}/tutorial5";
  static const String welcome = "${GlobalRoutes.onboarding}/welcome";
  static const String cookies = "${GlobalRoutes.onboarding}/cookies";
}

Route<dynamic> generateUnknowRoute(RouteSettings settings) {
  logger().e("generateUnknowRoute ${settings.name}");
  return _getPageRoute(SplashscreenView(), settings);
}

Route<dynamic> generateGlobalRoute(RouteSettings settings) {
  logger().d('generateGlobalRoute: ${settings.name} arg: ${settings.arguments != null}');

  switch (settings.name) {
    case GlobalRoutes.splash:
      return _getPageRoute(SplashscreenView(), settings);
    case GlobalRoutes.gdpr:
      return _getPageRoute(const GdprScreen(enableBack: false), settings);
    case GlobalRoutes.home:
      HomeScreenViewSettings? viewSettings;
      if (settings.arguments is HomeScreenViewSettings) {
        viewSettings = settings.arguments! as HomeScreenViewSettings;
      }

      return _getPageRoute(
          HomeViewBlocParent(
            viewSettings: viewSettings,
          ),
          settings);
    case GlobalRoutes.login:
      return _getPageRoute(LoginViewBlocParent(), settings);
    case GlobalRoutes.onboarding:
      return _getPageRoute(OnboardingViewBlocParent(), settings);
    case GlobalRoutes.demo:
      return _getPageRoute(DemoView(), settings);
    case GlobalRoutes.blank:
      return _getPageRoute(BlankView(), settings);
    default:
      logger().e("Not found generateGlobalRoute for name: ${settings.name}");
      return _getPageRoute(Container(), settings);
  }
}

Route<dynamic> generateHomeRoute(RouteSettings settings) {
  logger().d('generateHomeRoute: ${settings.name} arg: ${settings.arguments != null}');
  switch (settings.name) {
    case HomeRoutes.main:
      HomeScreenViewSettings? viewSettings;
      if (settings.arguments is HomeScreenViewSettings) {
        viewSettings = settings.arguments! as HomeScreenViewSettings;
      }
      return _getPageRoute(
          HomeScreenView(
            viewSettings: viewSettings,
          ),
          settings);
    case HomeRoutes.zodiac:
      assert(settings.arguments is CurrentUser);
      return _getPageRoute(
          OnboardingZodiacView.currentUser(settings.arguments! as CurrentUser), settings);
    case HomeRoutes.likes:
      return _getPageRoute(const LikesListBlocParent(), settings);
    case HomeRoutes.settings:
      return _getPageRoute(const SettingsView(), settings);
    case HomeRoutes.settingsPrivacyPreferences:
      return _getPageRoute(const SettingsPrivacyView(), settings);
    case HomeRoutes.notificationsSettings:
      return _getPageRoute(const SettingsNotificationsBlocParent(), settings);
    case HomeRoutes.chatChannel:
      assert(settings.arguments is Channel);
      return _getPageRoute(ChatChannelView(channel: settings.arguments! as Channel), settings);
    case HomeRoutes.profileEdit:
      return _getPageRoute(const ProfileEditView(), settings);
    case HomeRoutes.descriptionEdit:
      assert(settings.arguments is DescriptionEditViewSettings);
      return _getPageRoute(
          DescriptionEditView(
            settings: settings.arguments! as DescriptionEditViewSettings,
          ),
          settings);
    case HomeRoutes.welcome:
      return _getPageRoute(
          const OnboardingWelcomeView(
            isOnboarding: false,
          ),
          settings);
    case HomeRoutes.tutorial1:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(
                  step: OnboardingTutorial.screen1, isOnboarding: false)),
          settings);
    case HomeRoutes.tutorial2:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(
                  step: OnboardingTutorial.screen2, isOnboarding: false)),
          settings);
    case HomeRoutes.tutorial3:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(
                  step: OnboardingTutorial.screen3, isOnboarding: false)),
          settings);
    case HomeRoutes.tutorial4:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(
                  step: OnboardingTutorial.screen4, isOnboarding: false)),
          settings);
    case HomeRoutes.tutorial5:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(
                  step: OnboardingTutorial.screen5, isOnboarding: false)),
          settings);
    default:
      logger().e("Not found generateHomeRoute for name: ${settings.name}");
      return _getPageRoute(Container(), settings);
  }
}

Route<dynamic> generateLoginRoute(RouteSettings settings) {
  logger().d('generateLoginRoute: ${settings.name}');
  switch (settings.name) {
    case LoginRoutes.welcome:
      return _getPageRoute(LoginWelcomeViewBlocParent(), settings);
    case LoginRoutes.smsVerify:
      return _getPageRoute(VerifySmsCodeView(), settings);
    default:
      return _getPageRoute(Container(), settings);
  }
}

Route<dynamic> generateOnboardingRoute(RouteSettings settings) {
  logger().d('generateOnboardingRoute: ${settings.name}');
  switch (settings.name) {
    case OnboardingRoutes.name:
      OnboardingNameViewSettings viewSettings = OnboardingNameViewSettings(isEdit: false);
      if (settings.arguments is OnboardingNameViewSettings) {
        viewSettings = settings.arguments! as OnboardingNameViewSettings;
      }
      return _getPageRoute(
          OnboardingNameView(
            settings: viewSettings,
          ),
          settings);
    case OnboardingRoutes.birthData:
      BirthDataViewBlocParentSettings? viewSettings;
      if (settings.arguments is BirthDataViewBlocParentSettings) {
        viewSettings = settings.arguments! as BirthDataViewBlocParentSettings;
      }
      return _getPageRoute(
          viewSettings?.isEdit == true
              ? OnboardingBirthDataView(
                  settings: viewSettings!,
                )
              : const BirthDataViewBlocParent(),
          settings);
    case OnboardingRoutes.zodiac:
      return _getPageRoute(OnboardingZodiacViewBlocParent(), settings);
    case OnboardingRoutes.gender:
      OnboardingGenderViewSettings viewSettings = OnboardingGenderViewSettings(isEdit: false);
      if (settings.arguments is OnboardingGenderViewSettings) {
        viewSettings = settings.arguments! as OnboardingGenderViewSettings;
      }
      return _getPageRoute(
          OnboardingGenderView(
            settings: viewSettings,
          ),
          settings);
    case OnboardingRoutes.photos:
      return _getPageRoute(const PhotosEditView(), settings);
    case OnboardingRoutes.description:
      assert(settings.arguments is DescriptionEditViewSettings);
      return _getPageRoute(
          DescriptionEditView(
            settings: settings.arguments! as DescriptionEditViewSettings,
          ),
          settings);
    case OnboardingRoutes.location:
      return _getPageRoute(const LocationPermissionView(), settings);
    case OnboardingRoutes.notifications:
      return _getPageRoute(OnboardingNotificationsBlocParent(), settings);
    case OnboardingRoutes.tutorial1:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(step: OnboardingTutorial.screen1)),
          settings);
    case OnboardingRoutes.tutorial2:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(step: OnboardingTutorial.screen2)),
          settings);
    case OnboardingRoutes.tutorial3:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(step: OnboardingTutorial.screen3)),
          settings);
    case OnboardingRoutes.tutorial4:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(step: OnboardingTutorial.screen4)),
          settings);
    case OnboardingRoutes.tutorial5:
      return _getPageRoute(
          OnboardingTutorialView(
              pageConfig: OnboardingTutorialScreenConfig(step: OnboardingTutorial.screen5)),
          settings);
    case OnboardingRoutes.welcome:
      return _getPageRoute(OnboardingWelcomeView(), settings);
    case OnboardingRoutes.cookies:
      return _getPageRoute(const CookiesScreenBlocParent(), settings);
    default:
      return _getPageRoute(Container(), settings);
  }
}

PageRoute<dynamic> _getPageRoute<T extends Widget>(T child, RouteSettings settings) =>
    MaterialPageRoute<T>(
      settings: settings,
      builder: (_) => child,
    );
