import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_field.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/onboarding/description_edit_view_settings.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/services/navigation/navigation.dart';

class DescriptionEditView extends StatefulWidget {
  final DescriptionEditViewSettings settings;

  const DescriptionEditView({required this.settings, Key? key}) : super(key: key);

  @override
  _DescriptionEditViewState createState() => _DescriptionEditViewState();
}

class _DescriptionEditViewState extends State<DescriptionEditView> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: widget.settings.description);
    controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
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
                // ignore: no-equal-arguments
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
        ),
      );

  Widget _buildContent(BuildContext context) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppText(
              Str.of(context).userDescriptionEditViewTitle,
            ),
            padded(
                AppText(
                  Str.of(context).userDescriptionEditViewSubtitle,
                  type: AppTextType.title3,
                ),
                top: 15),
            padded(_buildTextField(context), top: 25),
            padded(
              AppText(
                Str.of(context).userDescriptionEditViewBottomMessage,
                type: AppTextType.caption,
                align: TextAlign.center,
                size: (AppTextType.caption.style(context, null)?.fontSize ?? 11) + 2,
              ),
              top: 20,
            ),
          ],
        ),
      );

  Widget _buildTextField(BuildContext context) => SizedBox(
      height: 160,
      child: AppTextField(
          controller: controller,
          action: TextInputAction.go,
          hint: Str.of(context).userDescriptionEditTextFieldHint,
          textCapitalization: TextCapitalization.sentences,
          maxLines: 20,
          onSubmitted: (String value) {
            _continue();
          }));

  Widget _buildContinue(BuildContext context) => AppButtonFilled(
        widget.settings.isEdit
            ? Str.of(context).generalUpdateAPIButtonTitle
            : Str.of(context).commonContinue,
        onPressed: _continue,
      );

  void _continue() {
    if (widget.settings.isEdit) {
      Navigator.of(context).pop(controller.text);
    } else {
      context
          .read<OnboardingBloc>()
          .add(OnboardingEvent.descriptionEntered(description: controller.text));
      navigator(NavigationService.onboarding).navigateTo(OnboardingRoutes.tutorial1);
    }
  }
}
