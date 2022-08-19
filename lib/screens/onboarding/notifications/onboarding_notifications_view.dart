import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_bloc.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_event.dart';

class OnboardingNotificationsView extends StatelessWidget {
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
            child: Image(image: context.theme.logoHeaderImage),
          ))),
      body: Stack(children: <Widget>[
        Image(
            width: double.infinity,
            height: double.infinity,
            image: context.theme.onboardingBackgroundImage,
            fit: BoxFit.cover),
        Padding(padding: const EdgeInsets.fromLTRB(30, 20, 30, 40), child: _buildContent(context))
      ]),
    );
  }

  Widget _buildContent(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(Str.of(context).onboardingNotificationsTitle),
          padded(
              AppText(Str.of(context).onboardingNotificationsDescription, type: AppTextType.body2),
              top: 15),
          const Spacer(),
          Center(
            child: paddedSymmetric(
                Image(
                  image: context.theme.notificationsBackground,
                ),
                horizontal: 30),
          ),
          const Spacer(),
          padded(
              AppButtonFilled(
                Str.of(context).onboardingNotificationsActivateBtnTitle,
                onPressed: () => _continue(context),
              ),
              bottom: 15),
          Center(
              child: AppButtonText(
            Str.of(context).commonSkip,
            onPressed: () => _skip(context),
            color: Colors.black.withOpacity(0.3),
          ))
        ],
      );

  void _continue(BuildContext context) => context
      .read<OnboardingNotificationsBloc>()
      .add(const OnboardingNotificationsEvent.activated());

  void _skip(BuildContext context) =>
      context.read<OnboardingNotificationsBloc>().add(const OnboardingNotificationsEvent.skipped());
}
