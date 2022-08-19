// ignore_for_file: no-magic-number
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_switch_row.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_html_action.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/documents/user_consent.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_bloc.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_state.dart';

import 'bloc/settings_privacy_event.dart';

// region Root
class SettingsPrivacyView extends StatefulWidget {
  const SettingsPrivacyView({Key? key}) : super(key: key);

  @override
  _SettingsPrivacyViewState createState() => _SettingsPrivacyViewState();
}

class _SettingsPrivacyViewState extends State<SettingsPrivacyView> {
  @override
  Widget build(BuildContext context) => BlocProvider<SettingsPrivacyBloc>(
        create: (_) => DependenciesContainer().get<SettingsPrivacyBloc>()
          ..profileBloc = context.read<ProfileBloc>()
          ..add(const SettingsPrivacyEvent.check()),
        child: BlocConsumer<SettingsPrivacyBloc, SettingsPrivacyState>(
            listener: (BuildContext context, SettingsPrivacyState state) {
              manageLoadingView(context, show: state is Loading);
              if (state is ApiError) {
                showErrorOverlay(state.error, context: context);
              }
            },
            buildWhen: (_, SettingsPrivacyState state) => state is Succeeded || state is Data,
            builder: (_, SettingsPrivacyState state) {
              if (state is Data) {
                return SettingsPrivacyContentView(
                  userConsent: state.data,
                );
              }
              return const CircularProgressIndicator();
            }),
      );
}
// endregion

// region Content

class SettingsPrivacyContentView extends StatelessWidget {
  final UserConsent userConsent;
  const SettingsPrivacyContentView({required this.userConsent, Key? key}) : super(key: key);

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
            ),
          )),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                const _SettingsPrivacyDescriptionView(),
                const _SettingsPrivacySmsView(),
                _SettingsPrivacyCookiesView(
                  onCookiesPreferencesChanged: (bool analytics, bool crash) {
                    context.read<SettingsPrivacyBloc>().add(
                        SettingsPrivacyEvent.update(analytics: analytics, errorTracking: crash));
                  },
                  analyticsConsent: userConsent.analytics ?? false,
                  errorTrackingConsent: userConsent.errorTracking ?? false,
                ),
                _SettingsPrivacySensitiveDataView(
                  sensitiveDataConsent: userConsent.sensitiveData ?? false,
                  onSensitivePreferenceChanged: (bool sensitive) => context
                      .read<SettingsPrivacyBloc>()
                      .add(SettingsPrivacyEvent.update(sensitiveData: sensitive)),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 30),
            child: AppButtonFilled(
              Str.of(context).generalSaveAPIButtonTitle,
              onPressed: () =>
                  context.read<SettingsPrivacyBloc>().add(const SettingsPrivacyEvent.submit()),
            ),
          ),
        ],
      ),
    );
  }
}

// endregion

// region Description

class _SettingsPrivacyDescriptionView extends StatelessWidget {
  const _SettingsPrivacyDescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 23, top: 30, right: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: AppText(Str.of(context).privacySettingsTitle, type: AppTextType.title3),
            ),
            const SizedBox(height: 10),
            AppTextHtmlAction(
                text: Str.of(context).privacySettingsDescription, type: AppTextType.body2),
          ],
        ),
      );
}

// endregion

// region SMS consent

class _SettingsPrivacySmsView extends StatefulWidget {
  const _SettingsPrivacySmsView({Key? key}) : super(key: key);

  @override
  _SettingsPrivacySmsViewSate createState() => _SettingsPrivacySmsViewSate();
}

class _SettingsPrivacySmsViewSate extends State<_SettingsPrivacySmsView> {
  bool _smsConsent = false;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          AppText(Str.of(context).privacySettingsSmsTitle, type: AppTextType.title3),
          const SizedBox(height: 10),
          AppSwitchRow(
            title: Str.of(context).privacySettingsSmsSwitchTitle,
            textStyle: context.theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600),
            isOn: _smsConsent,
            onChanged: (bool value) => setState(() {
              _smsConsent = value;
            }),
          )
        ],
      ));
}

// endregion

// region Cookies preferences

class _SettingsPrivacyCookiesView extends StatelessWidget {
  final bool analyticsConsent;
  final bool errorTrackingConsent;
  final Function(bool analytics, bool error) onCookiesPreferencesChanged;

  const _SettingsPrivacyCookiesView({
    required this.analyticsConsent,
    required this.errorTrackingConsent,
    required this.onCookiesPreferencesChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          AppText(
            Str.of(context).privacySettingsCookiesTitle,
            type: AppTextType.title3,
          ),
          const SizedBox(height: 10),
          AppSwitchRow(
            title: Str.of(context).privacySettingsNavigationSwitchTitle,
            textStyle: context.theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600),
            isOn: analyticsConsent,
            onChanged: (bool value) =>
                onCookiesPreferencesChanged.call(value, errorTrackingConsent),
          ),
          const SizedBox(height: 10),
          AppSwitchRow(
            title: Str.of(context).privacySettingsCrashSwitchTitle,
            textStyle: context.theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600),
            isOn: errorTrackingConsent,
            onChanged: (bool value) => onCookiesPreferencesChanged.call(analyticsConsent, value),
          ),
          const SizedBox(height: 65)
        ],
      ));
}

// endregion

// region Sesitive data

class _SettingsPrivacySensitiveDataView extends StatelessWidget {
  final bool sensitiveDataConsent;
  final Function(bool sensitiveData) onSensitivePreferenceChanged;

  const _SettingsPrivacySensitiveDataView({
    required this.sensitiveDataConsent,
    required this.onSensitivePreferenceChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => onSensitivePreferenceChanged(!sensitiveDataConsent),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 10, 15),
                child: Image(
                  image:
                      sensitiveDataConsent ? context.theme.uncheckImage : context.theme.checkImage,
                ),
              ),
            ),
          ),
          Flexible(
            child: AppTextHtmlAction(text: Str.of(context).privacySettingsSensitiveDataDescription),
          )
        ],
      ));
}

// endregion
