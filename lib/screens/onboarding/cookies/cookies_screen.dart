import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_switch_row.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_html_action.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_bloc.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_event.dart';
import 'package:twelv/services/analytics/att_service.dart';

class CookiesScreen extends StatefulWidget {
  const CookiesScreen({Key? key}) : super(key: key);

  @override
  _CookiesScreenState createState() => _CookiesScreenState();
}

class _CookiesScreenState extends State<CookiesScreen> {
  bool _mainConsent = false;
  bool _analyticsConsent = false;
  bool _crashConsent = false;

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
              padding: const EdgeInsets.only(right: 45), // ignore: no-magic-number
              child: Image(image: context.theme.logoHeaderImage),
            ))),
        body: _buildContent(),
      );

  Widget _buildContent() => Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 25), // ignore: no-magic-number
        child: Column(
          children: <Widget>[
            _buildMessages(),
            AppButtonFilled(
              Str.of(context).generalSaveAPIButtonTitle,
              onPressed: () {
                context.read<CookiesBloc>().add(CookiesEvent.update(
                    analytics: _analyticsConsent, errorTracking: _crashConsent));
              },
            ),
          ],
        ),
      );

  Widget _buildMessages() => Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppText(
                Str.of(context).cookiesSettingsTitle,
                type: AppTextType.title3,
              ),
              padded(
                  AppTextHtmlAction(
                    text: Str.of(context).cookiesSettingsMessage,
                    type: AppTextType.body2,
                  ),
                  top: 15),
              ..._buildSwitchSection(),
            ],
          ),
        ),
      );

  List<Widget> _buildSwitchSection() => <Widget>[
        padded(
            AppText(
              Str.of(context).cookiesSettingsChoiceSectionTitle,
              type: AppTextType.title3,
            ),
            top: 30),
        padded(
            AppSwitchRow(
              title: Str.of(context).cookiesSettingsMainSwitchTitle,
              textStyle: context.theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600),
              isOn: _mainConsent,
              onChanged: (bool value) {
                setState(() {
                  _mainConsent = value;
                  _crashConsent = _mainConsent;
                });
                setAnalyticsConsent(newValue: value);
              },
            ),
            top: 10),
        AppSwitchRow(
          title: Str.of(context).cookiesSettingsNavigationSwitchTitle,
          indentationLevel: 1,
          textStyle: context.theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),
          isOn: _analyticsConsent,
          onChanged: (bool value) => setAnalyticsConsent(newValue: value),
        ),
        AppSwitchRow(
          title: Str.of(context).cookiesSettingsCrashSwitchTitle,
          indentationLevel: 1,
          textStyle: context.theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),
          isOn: _crashConsent,
          onChanged: (bool value) => setState(() {
            if (value && !_mainConsent) {
              _mainConsent = true;
            }
            _crashConsent = value;
          }),
        )
      ];

  // region Action
  //ignore: avoid_setters_without_getters
  Future<void> setAnalyticsConsent({required bool newValue}) async {
    final bool agree =
        await DependenciesContainer().get<ATTService>().askForPermission(useAnalitics: newValue);
    setState(() {
      _analyticsConsent = agree;
      if (agree) {
        _mainConsent = true;
      }
    });
  }
}
