import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_field_phone.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/login/welcome/bloc/login_welcome_bloc.dart';
import 'package:twelv/screens/login/welcome/bloc/login_welcome_event.dart';

class LoginWelcomeView extends StatefulWidget {
  final List<String> phoneNumberPrefixes;

  const LoginWelcomeView({Key? key, required this.phoneNumberPrefixes}) : super(key: key);

  @override
  _LoginWelcomeViewState createState() => _LoginWelcomeViewState();
}

class _LoginWelcomeViewState extends State<LoginWelcomeView> {
  // region State

  String phoneNumber = "";
  bool _continueEnabled = false;
  late final FocusNode focusNode;
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
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
          body: Stack(children: <Widget>[
            Image(
              image: context.theme.onboardingBackgroundImage,
              fit: BoxFit.cover,
              width: double.infinity,
              // ignore: no-equal-arguments
              height: double.infinity,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    30, MediaQuery.of(context).viewInsets.bottom == 0 ? 70 : 10, 30, 75),
                child: _buildContentScrollView(context, content)),
            Positioned(
              bottom: MediaQuery.of(context).viewInsets.bottom + 30,
              left: 30,
              // ignore: no-equal-arguments
              right: 30,
              child: AppButtonFilled(Str.of(context).commonContinue,
                  onPressed: _submitPhoneLogin,
                  enabled: controller.text.isNotEmpty || _continueEnabled),
            ),
          ])),
    );
  }

  Widget _buildContentScrollView(BuildContext context, Widget child) => Column(
        children: <Widget>[
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
                    child: IntrinsicHeight(
                      child: child,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );

  Widget _buildContent(BuildContext context) => Column(
        children: <Widget>[
          _padded(Center(child: Image(image: context.theme.logoBigImage)), top: 6, bottom: 25),
          Align(
            alignment: Alignment.centerLeft,
            child: AppText(Str.of(context).loginWelcomeTitle),
          ),
          _padded(
              Align(
                alignment: Alignment.centerLeft,
                child: AppText(
                  Str.of(context).loginWelcomeSubtitle,
                  type: AppTextType.title3,
                ),
              ),
              bottom: 10),
          _buildFormInputView(),
          const SizedBox(height: 15),
          Align(
              alignment: Alignment.centerLeft,
              child: AppText(Str.of(context).loginWelcomeTypePhoneNumDescription,
                  type: AppTextType.body2)),
          const Spacer(),
          ..._buildSocialLoginWidgets(),
          const Spacer(flex: 3),
        ],
      );

  // endregion

  // region child Widgets

  List<Widget> _buildSocialLoginWidgets() => MediaQuery.of(context).viewInsets.bottom != 0
      ? <Widget>[]
      : <Widget>[
          AppText(Str.of(context).loginWelcomeSocialAuthSectionTitle, type: AppTextType.body2),
          _buildAppleSignInButtonIfPossible(context),
          AppButtonFilled(
            Str.of(context).loginWelcomeLoginByFacebookBtnTitle,
            type: AppButtonType.secondary,
            onPressed: () {
              context.read<LoginWelcomeBloc>().add(const LoginWelcomeEvent.facebookClicked());
            },
            iconLeft: ImageIcon(context.theme.logoFacebookMini, size: 20, color: Colors.white),
            color: const Color(0xff2773f0),
          ),
        ];

  Widget _buildFormInputView() => AppTextFieldPhone(widget.phoneNumberPrefixes,
          selectedValue: widget.phoneNumberPrefixes.first,
          hint: Str.of(context).loginWelcomePhoneNumberHint, onChanged: (String newPhone) {
        phoneNumber = newPhone;
        final bool shouldContinueEnabled = newPhone.length >= 5;
        if (shouldContinueEnabled != _continueEnabled) {
          setState(() {
            _continueEnabled = shouldContinueEnabled;
          });
        }
      }, onSubmitted: (String approvedPhone) {
        phoneNumber = approvedPhone;
        _submitPhoneLogin();
      }, focusNode: focusNode, controller: controller);

  Widget _buildAppleSignInButtonIfPossible(BuildContext context) =>
      context.theme.platform == TargetPlatform.iOS
          ? _padded(
              AppButtonFilled(
                Str.of(context).loginWelcomeLoginByAppleBtnTitle,
                type: AppButtonType.secondary,
                onPressed: () {
                  context
                      .read<LoginWelcomeBloc>()
                      .add(const LoginWelcomeEvent.appleSignInClicked());
                },
                iconLeft: ImageIcon(context.theme.logoAppleMini, size: 20, color: Colors.white),
                color: Colors.black,
              ),
            )
          : const SizedBox(height: 15);

  // endregion

  // region Actions

  void _submitPhoneLogin() {
    if (controller.text.isNotEmpty) {
      context
          .read<LoginWelcomeBloc>()
          .add(LoginWelcomeEvent.phoneNumberProvided(phoneNumber: phoneNumber));
    }
  }

  // endregion

  // region Utils

  Widget _padded(Widget child, {double top = 15, double bottom = 15}) =>
      Padding(padding: EdgeInsets.only(top: top, bottom: bottom), child: child);

// endregion
}
