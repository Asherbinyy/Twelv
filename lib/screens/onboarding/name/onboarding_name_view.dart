import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_field.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/services/navigation/navigation.dart';
import 'package:twelv/services/validators/validation.dart';

class OnboardingNameViewSettings {
  final String? value;
  final bool isEdit;

  OnboardingNameViewSettings({required this.isEdit, this.value});
}

class OnboardingNameView extends StatefulWidget {
  final OnboardingNameViewSettings settings;

  const OnboardingNameView({
    required this.settings,
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingNameViewState createState() => _OnboardingNameViewState();
}

class _OnboardingNameViewState extends State<OnboardingNameView> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(
        text: widget.settings.isEdit
            ? widget.settings.value
            : context.read<OnboardingBloc>().state.name);
    controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.theme.primaryColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Center(child: Image(image: context.theme.logoHeaderImage))),
        body: Stack(children: <Widget>[
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image(image: context.theme.onboardingBackgroundImage, fit: BoxFit.cover)),
          Padding(padding: const EdgeInsets.fromLTRB(30, 20, 30, 40), child: _buildContent())
        ]),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _buildContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(Str.of(context).onboardingNameTitle),
          const SizedBox(height: 15),
          AppText(Str.of(context).onboardingNameInputTitle, type: AppTextType.title3),
          const SizedBox(height: 10),
          AppTextField(
            controller: controller,
            maxLength: 255,
            hint: Str.of(context).onboardingNameInputPlaceholder,
            action: TextInputAction.go,
            onSubmitted: (String value) {
              if (DependenciesContainer().get<ValidationService>().name.isValid(controller.text)) {
                _continue();
              }
            },
          ),
          const SizedBox(height: 15),
          AppText(Str.of(context).onboardingNameDescription, type: AppTextType.body2),
          const SizedBox(height: 10),
          const Spacer(),
          AppButtonFilled(
            widget.settings.isEdit
                ? Str.of(context).generalUpdateAPIButtonTitle
                : Str.of(context).commonContinue,
            enabled: DependenciesContainer().get<ValidationService>().name.isValid(controller.text),
            onPressed: _continue,
          ),
        ],
      );

  void _continue() {
    if (widget.settings.isEdit) {
      Navigator.of(context).pop(controller.text);
    } else {
      context.read<OnboardingBloc>().add(OnboardingEvent.nameEntered(name: controller.text));
      navigator(NavigationService.onboarding).navigateTo(OnboardingRoutes.gender);
    }
  }
}
