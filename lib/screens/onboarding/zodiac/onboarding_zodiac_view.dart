import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/extensions/string_extension.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/zodiac/zodiac.dart';
import 'package:twelv/model/zodiac/zodiac_response.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/services/navigation/navigation.dart';

class OnboardingZodiacView extends StatelessWidget {
  // region Lifecycle

  final ZodiacResponse? zodiac;
  final Exception? error;
  final bool showContinue;

  const OnboardingZodiacView(this.zodiac, this.error, {this.showContinue = true});

  factory OnboardingZodiacView.currentUser(CurrentUser currentUser) {
    final ZodiacResponse zodiacResponse = ZodiacResponse(
        sun: Zodiac(sign: currentUser.sunSign),
        ascendant: Zodiac(sign: currentUser.astrologicalSign),
        text: currentUser.zodiacText);

    return OnboardingZodiacView(
      zodiacResponse,
      null,
      showContinue: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Image.asset(context.theme.backImage.assetName),
          ),
          title: Center(
              child: Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Image(image: context.theme.logoHeaderImage)))),
      body: Stack(children: <Widget>[
        Image(
            width: double.infinity,
            height: double.infinity, // ignore: no-equal-arguments
            image: context.theme.onboardingBackgroundImage,
            fit: BoxFit.cover),
        Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 40),
            child: _buildContentContainer(context))
      ]),
    );
  }

  // endregion

  // region Build content

  Widget _buildContentContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: AppText(Str.of(context).onboardingZodiacTitle)),
        const SizedBox(height: 15),
        Expanded(
          child: Material(
            elevation: 3,
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildContent(context),
                    ),
                  )),
            ),
          ),
        ),
        const SizedBox(height: 30),
        if (showContinue)
          padded(AppButtonFilled(Str.of(context).commonContinue, onPressed: _continue),
              left: 15, right: 15)
      ],
    );
  }

  List<Widget> _buildContent(BuildContext context) {
    if (zodiac != null) {
      return <Widget>[
        padded(
            Row(children: <Widget>[
              _buildZodiacSignContainer(
                  context, Str.of(context).onboardingZodiacSignTitle, zodiac!.sun),
              const SizedBox(width: 15),
              _buildZodiacSignContainer(
                  context, Str.of(context).onboardingZodiacAscendantSignTitle, zodiac!.ascendant)
            ]),
            left: 10,
            right: 10),
        padded(AppText(zodiac!.text ?? "", type: AppTextType.body1Accent), top: 20)
      ];
    } else if (error != null) {
      showErrorOverlay(error!, context: context);
    }
    return <Widget>[];
  }

  Widget _buildZodiacSignContainer(BuildContext context, String title, Zodiac? zodiac) => Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: context.theme.accentColor),
          child: paddedSymmetric(
            Column(children: <Widget>[
              FittedBox(fit: BoxFit.fitWidth, child: AppText(title, type: AppTextType.titleLight3)),
              padded(
                  Image(
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                      image: zodiac?.sign?.image(context) ?? context.theme.logoHeaderImage),
                  top: 10),
              padded(
                  FittedBox(
                      fit: BoxFit.fitWidth,
                      child: AppText(zodiac?.sign?.name(context).capitalized() ?? "",
                          type: AppTextType.buttonFilled)),
                  top: 10)
            ]),
            horizontal: 5, // ignore: no-magic-number
            vertical: 15, // ignore: no-magic-number
          ),
        ),
      );

  // endregion

  // region Action

  void _continue() {
    navigator(NavigationService.onboarding).navigateTo(OnboardingRoutes.cookies);
  }

  // endregion

}
