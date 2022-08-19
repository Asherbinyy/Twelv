import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_field.dart';
import 'package:twelv/generated/l10n.dart';

class VerifySmsCodeView extends StatefulWidget {
  @override
  _VerifySmsCodeViewState createState() => _VerifySmsCodeViewState();
}

class _VerifySmsCodeViewState extends State<VerifySmsCodeView> {
  // region State

  String smsCode = "";
  bool _continueEnabled = false;
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _buildContainer(context, content: _buildContent(context));

  // endregion

  // region Widget's structure

  GestureDetector _buildContainer(BuildContext context, {required Widget content}) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: context.theme.primaryColor,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset(context.theme.backImage.assetName),
            ),
            title: Image(image: context.theme.logoHeaderImage),
          ),
          body: Stack(children: <Widget>[
            Image(
              image: context.theme.onboardingBackgroundImage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    30, MediaQuery.of(context).viewInsets.bottom == 0 ? 30 : 5, 30, 30),
                child: content),
            Positioned(
              bottom: MediaQuery.of(context).viewInsets.bottom == 0
                  ? 30
                  : MediaQuery.of(context).viewInsets.bottom + 65,
              left: 30,
              // ignore: no-equal-arguments
              right: 30,
              child: AppButtonFilled(Str.of(context).commonContinue,
                  onPressed: _submitSmsCode,
                  enabled: controller.text.isNotEmpty || _continueEnabled),
            ),
          ])),
    );
  }

  Widget _buildContent(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(Str.of(context).verifySmsWelcomeTitle),
          _padded(
              AppText(
                Str.of(context).verifySmsWelcomeSubtitle,
                type: AppTextType.title3,
              ),
              bottom: 10),
          AppTextField(
            text: smsCode,
            controller: controller,
            maxLines: 1,
            onChanged: (String newSmsCode) {
              final bool shouldContinueEnabled = newSmsCode.length >= 2;
              setState(() {
                smsCode = newSmsCode;
                if (shouldContinueEnabled != _continueEnabled) {
                  _continueEnabled = shouldContinueEnabled;
                }
              });
            },
            onSubmitted: (String approvedSmsCode) {
              smsCode = approvedSmsCode;
              _submitSmsCode();
            },
            inputType: TextInputType.number,
          ),
          _padded(AppText(Str.of(context).verifySmsCodeFieldDescription, type: AppTextType.body2)),
          AppButtonFilled(
            Str.of(context).verifySmsResendBtnTitle,
            type: AppButtonType.error,
            onPressed: _resendSmsCode,
          ),
          const Spacer(flex: 3),
        ],
      );

  // endregion

  // region Actions

  void _submitSmsCode() {
    context.read<AuthenticationBloc>().add(AuthenticationEvent.confirmSmsCode(smsCode: smsCode));
  }

  void _resendSmsCode() {
    context.read<AuthenticationBloc>().add(const AuthenticationEvent.resendSmsCode());
  }

  // endregion

  // region Utils

  Widget _padded(Widget child, {double top = 15, double bottom = 15}) =>
      Padding(padding: EdgeInsets.only(top: top, bottom: bottom), child: child);

// endregion
}
