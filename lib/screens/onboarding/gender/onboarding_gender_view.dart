import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_radio_button.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/onboarding/onboarding_gender_view_data.dart';
import 'package:twelv/model/profile/gender.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/screens/onboarding/gender/components/gender_privacy_dialog.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_bloc.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_event.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_state.dart' as privacy_state;
import 'package:twelv/services/navigation/navigation.dart';

class OnboardingGenderView extends StatefulWidget {
  final OnboardingGenderViewSettings settings;

  const OnboardingGenderView({
    required this.settings,
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingGenderViewState createState() => _OnboardingGenderViewState();
}

class _OnboardingGenderViewState extends State<OnboardingGenderView> {
  Gender? _gender;
  Gender? _interestedIn;
  bool? _consentSensitiveData;

  @override
  void initState() {
    _gender = widget.settings.gender;
    _interestedIn = widget.settings.interestedIn;
    _consentSensitiveData = widget.settings.consentSensitiveData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        SizedBox(
            width: double.infinity,
            height: double.infinity, // ignore: no-equal-arguments
            child: Image(image: context.theme.onboardingBackgroundImage, fit: BoxFit.cover)),
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
  }

  Widget _buildContent(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: AppText(
                Str.of(context).genderEditViewTitle,
              ),
            ),
            padded(
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    Str.of(context).genderMySectionHeaderTitle,
                    type: AppTextType.title3,
                  ),
                ),
                top: 15),
            padded(
                AppRadioButton(
                  GenderHelper.getRadios(context, isMe: true),
                  selectedValue: GenderHelper.genderToString(context, _gender, isMe: true),
                  onSelected: (String? value) => setState(() {
                    _gender = GenderHelper.fromString(context, value, isMe: true);
                  }),
                ),
                top: 15),
            padded(
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    Str.of(context).genderInterestedInSectionHeaderTitle,
                    type: AppTextType.title3,
                  ),
                ),
                top: 30),
            padded(_buildGenderInterestedIn(context), top: 10),
          ],
        ),
      );

  Widget _buildGenderInterestedIn(BuildContext context) => AppRadioButton(
        GenderHelper.getRadios(context, isMe: false),
        allowDeselect: true,
        selectedValue: GenderHelper.genderToString(context, _interestedIn, isMe: false),
        correction: (String? selectedValue) async {
          final Gender? selectedGender =
              GenderHelper.fromString(context, selectedValue, isMe: false);
          if (selectedGender == null) {
            return null;
          } else {
            final Gender? acceptedGender = await showDialog(
                context: context,
                builder: (_) => GenderPrivacyDialog(
                      gender: selectedGender,
                    ));
            return GenderHelper.genderToString(context, acceptedGender, isMe: false);
          }
        },
        onSelected: (String? value) => setState(() {
          _interestedIn = GenderHelper.fromString(context, value, isMe: false);
          _consentSensitiveData = _interestedIn != null;
        }),
      );

  Widget _buildContinue(BuildContext context) => BlocProvider<SettingsPrivacyBloc>(
        create: (_) => DependenciesContainer().get<SettingsPrivacyBloc>(),
        child: BlocConsumer<SettingsPrivacyBloc, privacy_state.SettingsPrivacyState>(
          listener: (BuildContext context, privacy_state.SettingsPrivacyState state) {
            manageLoadingView(context, show: state is privacy_state.Loading);
            if (state is privacy_state.ApiError) {
              showErrorOverlay(state.error, context: context);
            } else if (state is privacy_state.Succeeded) {
              _continue();
            }
          },
          buildWhen: (_, privacy_state.SettingsPrivacyState state) => state is privacy_state.Data,
          builder: (BuildContext context, privacy_state.SettingsPrivacyState state) =>
              AppButtonFilled(
            widget.settings.isEdit
                ? Str.of(context).generalUpdateAPIButtonTitle
                : Str.of(context).commonContinue,
            enabled: _gender != null,
            onPressed: () => context.read<SettingsPrivacyBloc>()
              ..add(SettingsPrivacyEvent.update(sensitiveData: _interestedIn != null))
              ..add(const SettingsPrivacyEvent.submit()),
          ),
        ),
      );

  void _continue() {
    if (widget.settings.isEdit) {
      Navigator.of(context).pop(OnboardingGenderViewData(
          gender: _gender,
          interestedIn: _interestedIn,
          consentSensitiveData: _consentSensitiveData));
    } else {
      context
          .read<OnboardingBloc>()
          .add(OnboardingEvent.genderEntered(gender: _gender, interestedIn: _interestedIn));
      navigator(NavigationService.onboarding).navigateTo(OnboardingRoutes.photos);
    }
  }
}
