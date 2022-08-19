import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_button_row.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/onboarding/birth_data_view_data.dart';
import 'package:twelv/model/onboarding/current_user_helper.dart';
import 'package:twelv/model/onboarding/description_edit_view_settings.dart';
import 'package:twelv/model/onboarding/onboarding_gender_view_data.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/screens/explorer/components/card_single_profile_view.dart';
import 'package:twelv/screens/onboarding/birthdata/onboarding_birth_data_view.dart';
import 'package:twelv/screens/onboarding/description/description_edit_view.dart';
import 'package:twelv/screens/onboarding/gender/onboarding_gender_view.dart';
import 'package:twelv/screens/onboarding/name/onboarding_name_view.dart';
import 'package:twelv/screens/onboarding/photos/components/photo_section_view.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_event.dart';
import 'package:twelv/screens/profile/bloc/profile_state.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset(context.theme.backImage.assetName),
            ),
            title: Center(
                child: Padding(
              padding: const EdgeInsets.only(right: 45), // ignore: no-magic-number
              child: Image(image: context.theme.logoHeaderImage),
            ))),
        body: BlocListener<ProfileBloc, ProfileState>(
          listener: (BuildContext context, ProfileState state) {
            manageLoadingView(context, show: state is Loading);
            if (state is Error) {
              showErrorOverlay(state.error, context: context);
            }
          },
          child: _buildBody(context),
        ),
        backgroundColor: context.theme.primaryColor,
      );

  Widget _buildBody(BuildContext context) {
    final CurrentUser currentUser = CurrentUserWidget.of(context).currentUser;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 54),
      child: Column(
        children: <Widget>[
          ..._getUserPhotos(context, currentUser),
          padded(
              AppButtonFilled(
                Str.of(context).profilPreviewBtnTitle,
                type: AppButtonType.secondary,
                onPressed: () => showDialog(
                    context: context,
                    useRootNavigator: false,
                    barrierDismissible: true,
                    builder: (BuildContext context) => Material(
                        type: MaterialType.transparency,
                        child: CardSingleProfileView.fromCurrentUser(currentUser))),
              ),
              top: 10),
          ..._getUserDescriptions(context, currentUser),
        ],
      ),
    );
  }

  List<Widget> _getUserPhotos(BuildContext context, CurrentUser currentUser) => <Widget>[
        AppText(Str.of(context).profilEditTitle),
        PhotoSectionView(
          photos: currentUser.images,
          allowRemoveAll: false,
          onDelete: (int index) => context.read<ProfileBloc>().add(ProfileEvent.delPhoto(index)),
          onAdd: (File file) => context.read<ProfileBloc>().add(ProfileEvent.addPhoto(file)),
        )
      ];

  List<Widget> _getUserDescriptions(BuildContext context, CurrentUser currentUser) => <Widget>[
        padded(
            AppText(
              Str.of(context).profilPersonalSectionTitle,
              type: AppTextType.title3,
            ),
            top: 20),
        padded(_buildEditDescription(context, currentUser), top: 15),
        _buildEditName(context, currentUser),
        AppButtonRow(
          title: Str.of(context).profilDateBirthTitle,
          subTitle: _formatDate(currentUser.dateTimeOfBirth!),
          onPressed: () => _editBirthData(context, currentUser),
        ),
        AppButtonRow(
          title: Str.of(context).profilTimeBirthTitle,
          subTitle: _formatTime(TimeOfDay.fromDateTime(currentUser.dateTimeOfBirth!)),
          onPressed: () => _editBirthData(context, currentUser),
        ),
        AppButtonRow(
          title: Str.of(context).profilPlaceBirthTitle,
          subTitle: currentUser.placeOfBirth,
          onPressed: () => _editBirthData(context, currentUser),
        ),
        AppButtonRow(
          title: Str.of(context).profilGenderTitle,
          subTitle: GenderHelper.genderToString(context, currentUser.gender, isMe: true),
          onPressed: () => _editGender(context, currentUser),
        ),
        AppButtonRow(
          title: Str.of(context).profilInterestedInTitle,
          subTitle: currentUser.interestedIn == null
              ? Str.of(context).settingsGenderNullInterestedIn
              : GenderHelper.genderToString(context, currentUser.interestedIn, isMe: false),
          onPressed: () => _editGender(context, currentUser),
        )
      ];

  // region Edit elements

  Widget _buildEditDescription(BuildContext context, CurrentUser currentUser) => AppButtonRow(
        title: Str.of(context).profilDescriptionTitle,
        subTitle: currentUser.about,
        onPressed: () async {
          final dynamic value = await Navigator.push(
            context,
            MaterialPageRoute<String?>(
                builder: (BuildContext context) => DescriptionEditView(
                      settings:
                          DescriptionEditViewSettings(description: currentUser.about, isEdit: true),
                    )),
          );
          if (value is String) {
            currentUser.about = value;
            context.read<ProfileBloc>().add(ProfileEvent.updateUser(currentUser));
          }
        },
      );

  Widget _buildEditName(BuildContext context, CurrentUser currentUser) => AppButtonRow(
        title: Str.of(context).profilNameTitle,
        subTitle: currentUser.name,
        onPressed: () async {
          final String? value = await Navigator.push(
            context,
            MaterialPageRoute<String>(
                builder: (BuildContext context) => OnboardingNameView(
                      settings: OnboardingNameViewSettings(isEdit: true, value: currentUser.name),
                    )),
          );
          if (value != null) {
            currentUser.name = value;
            context.read<ProfileBloc>().add(ProfileEvent.updateUser(currentUser));
          }
        },
      );

  Future<void> _editBirthData(BuildContext context, CurrentUser currentUser) async {
    final BirthDataViewData? value = await Navigator.push(
      context,
      MaterialPageRoute<BirthDataViewData>(
          builder: (BuildContext context) => OnboardingBirthDataView(
                settings: BirthDataViewBlocParentSettings.fromUser(currentUser, isEdit: true),
              )),
    );
    if (value != null) {
      currentUser.birthDataViewData = value;
      context.read<ProfileBloc>().add(ProfileEvent.updateUser(currentUser));
    }
  }

  Future<void> _editGender(BuildContext context, CurrentUser currentUser) async {
    final OnboardingGenderViewData? value = await Navigator.push(
      context,
      MaterialPageRoute<OnboardingGenderViewData>(
          builder: (BuildContext context) => OnboardingGenderView(
                settings: OnboardingGenderViewSettings.fromUser(currentUser, isEdit: true),
              )),
    );
    if (value != null) {
      currentUser.genderData = value;
      currentUser.consentSensitiveData = value.consentSensitiveData;
      context.read<ProfileBloc>().add(ProfileEvent.updateUser(currentUser));
    }
  }

  // endregion

  // region date

  String _formatDate(DateTime? date) =>
      DependenciesContainer()
          .get<FormatterService>()
          .date
          .format(date, inFormat: AppDateFormat.birth) ??
      "";

  String _formatTime(TimeOfDay? time) =>
      DependenciesContainer()
          .get<FormatterService>()
          .date
          .formatTime(time, inFormat: AppDateFormat.birthTime) ??
      "";

  // endregion
}
