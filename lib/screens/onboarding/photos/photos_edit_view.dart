import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/onboarding/description_edit_view_settings.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';
import 'package:twelv/screens/onboarding/photos/components/photo_section_view.dart';
import 'package:twelv/services/navigation/navigation.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotosEditView extends StatefulWidget {
  const PhotosEditView({Key? key}) : super(key: key);

  @override
  _PhotosEditViewState createState() => _PhotosEditViewState();
}

class _PhotosEditViewState extends State<PhotosEditView> {
  @override
  Widget build(BuildContext context) => Scaffold(
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
        body: Stack(children: <Widget>[
          Image(
              width: double.infinity,
              height: double.infinity,
              image: context.theme.onboardingBackgroundImage,
              fit: BoxFit.cover),
          Container(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 90), child: _buildContent(context)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
              child: _buildContinue(context),
            ),
          ),
        ]),
      );

  Widget _buildContent(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: AppText(
                Str.of(context).photosEditViewTitle,
              ),
            ),
            padded(
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    Str.of(context).photosHeaderSubtitle,
                    type: AppTextType.title3,
                  ),
                ),
                top: 15),
            padded(
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    Str.of(context).photosInfoDescriptionText,
                    type: AppTextType.body1,
                  ),
                ),
                top: 10),
            padded(const _OnboardingPhotosSectionView(), top: 25),
            padded(
              AppText(
                Str.of(context).photosHelpDescriptionLine1Text,
                type: AppTextType.caption,
                align: TextAlign.center,
              ),
              top: 20,
            ),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: Str.of(context).photosHelpDescriptionLine2Text,
                  style: AppTextType.caption.style(context, null)),
              TextSpan(
                  text: " ${Str.of(context).photosHelpDescriptionLine2URLText}",
                  style: AppTextType.caption.style(context, Theme.of(context).textDarkColor),
                  recognizer: TapGestureRecognizer()..onTap = _launchHelpURL)
            ]))
          ],
        ),
      );

  // endregion

  // region Build action view

  Widget _buildContinue(BuildContext context) => BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (BuildContext context, OnboardingState state) => AppButtonFilled(
            Str.of(context).commonContinue,
            enabled: state.photos != null && state.photos!.isNotEmpty,
            onPressed: _continue,
          ));

  // region Action

  void _continue() {
    final DescriptionEditViewSettings descriptionEditViewSettings = DescriptionEditViewSettings(
        description: context.read<OnboardingBloc>().state.description, isEdit: false);
    navigator(NavigationService.onboarding)
        .navigateTo(OnboardingRoutes.description, args: descriptionEditViewSettings);
  }

  void _launchHelpURL() async => await canLaunch(Str.of(context).photosHelpURL)
      ? await launch(Str.of(context).photosHelpURL)
      : showErrorMessageOverlay(
          "${Str.of(context).errorCantOpenUrl}: ${Str.of(context).photosHelpURL}",
          context: context);

  // endregion
}

class _OnboardingPhotosSectionView extends StatelessWidget {
  const _OnboardingPhotosSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (BuildContext context, OnboardingState state) => PhotoSectionView(
          files: state.photos ?? <File>[],
          onAdd: (File file) =>
              context.read<OnboardingBloc>().add(OnboardingEvent.photoAdd(file: file)),
          onDelete: (int index) =>
              context.read<OnboardingBloc>().add(OnboardingEvent.photoDelete(index: index)),
        ),
      );
}
