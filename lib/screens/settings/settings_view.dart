import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/common/components/dialog/options_dialog_view.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_button_row.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/documents/html_document_type.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/document/bloc/document_bloc.dart';
import 'package:twelv/screens/document/bloc/document_event.dart';
import 'package:twelv/screens/document/document_view_bloc_parent.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_event.dart';
import 'package:twelv/screens/profile/bloc/profile_state.dart' as profile;
import 'package:twelv/services/navigation/navigation.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

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
        body: BlocListener<ProfileBloc, profile.ProfileState>(
          listener: (BuildContext context, profile.ProfileState state) {
            manageLoadingView(context, show: state is profile.Loading);
            if (state is profile.Error) {
              showErrorOverlay(state.error, context: context);
            }
          },
          child: _buildBody(context),
        ),
        backgroundColor: context.theme.primaryColor,
      );

  Widget _buildBody(BuildContext context) {
    const double marginHorizontal = 30;

    return Padding(
      padding: const EdgeInsets.fromLTRB(marginHorizontal, 20, marginHorizontal,
          40), // ignore: no-magic-number, no-equal-arguments
      child: Column(children: const <Widget>[
        Expanded(child: _SettingsViewContent()),
        _SettingsViewBottomButtons(),
      ]),
    );
  }
}

class _SettingsViewContent extends StatelessWidget {
  const _SettingsViewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: DocumentViewBlocParent(
          builder: (BuildContext context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppText(Str.of(context).settingsTitle),
              padded(
                  AppText(
                    Str.of(context).settingsNotificationSectionTitle,
                    type: AppTextType.title2,
                  ),
                  top: 20), // ignore: no-magic-number
              AppButtonRow(
                title: Str.of(context).settingsNotificationManageButtonTitle,
                onPressed: () =>
                    navigator(NavigationService.home).navigateTo(HomeRoutes.notificationsSettings),
              ),
              padded(
                  AppText(
                    Str.of(context).settingsAssistanceSectionTitle,
                    type: AppTextType.title2,
                  ),
                  top: 20), // ignore: no-magic-number
              AppButtonRow(
                title: Str.of(context).settingsCommunicationBtnTitle,
                onPressed: () => navigator(NavigationService.home).navigateTo(HomeRoutes.tutorial1),
              ),
              AppButtonRow(
                  title: Str.of(context).settingsPrivacyPolicyBtnTitle,
                  onPressed: () => context
                      .read<DocumentBloc>()
                      .add(const DocumentEvent.show(HtmlDocumentType.privacyPolicy))),
              AppButtonRow(
                  title: Str.of(context).settingsTermsBtnTitle,
                  onPressed: () => context
                      .read<DocumentBloc>()
                      .add(const DocumentEvent.show(HtmlDocumentType.termsOfUse))),
              AppButtonRow(
                title: Str.of(context).settingsPrivacyPreferencesBtnTitle,
                onPressed: () {
                  navigator(NavigationService.home)
                      .navigateTo(HomeRoutes.settingsPrivacyPreferences);
                },
              ),
            ],
          ),
        ),
      );
}

class _SettingsViewBottomButtons extends StatelessWidget {
  const _SettingsViewBottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          AppButtonFilled(
            Str.of(context).settingsLogoutBtnTitle,
            onPressed: () =>
                context.read<AuthenticationBloc>().add(const AuthenticationEvent.signOut()),
          ),
          const SizedBox(
            height: 10, // ignore: no-magic-number
          ),
          AppButtonText(
            Str.of(context).settingsDeleteAccountBtnTitle,
            type: AppTextType.buttonTextBold,
            color: Colors.black.withOpacity(0.3), // ignore: no-magic-number
            onPressed: () => showOptionsDialog(
                context,
                Str.of(context).deleteAccountPopupTitle,
                CurrentUserWidget.of(context).currentUser.isPremium
                    ? Str.of(context).deleteAccountPopupPremiumMessage
                    : Str.of(context).deleteAccountPopupStandardUserMessage,
                <ActionDialogData>[
                  ActionDialogData(
                    Str.of(context).commonPopupOkButtonTitle,
                    () => context.read<ProfileBloc>().add(const ProfileEvent.delete()),
                  ),
                  ActionDialogData(Str.of(context).commonPopupCancelButtonTitle, null),
                ]),
          )
        ],
      );
}
