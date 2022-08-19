import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_radio_button.dart';
import 'package:twelv/components/app_slider.dart';
import 'package:twelv/components/app_slider_range.dart';
import 'package:twelv/components/app_tag.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_field.dart';
import 'package:twelv/components/app_text_field_dropdown.dart';
import 'package:twelv/components/app_text_field_location.dart';
import 'package:twelv/components/app_text_field_phone.dart';
import 'package:twelv/screens/settings/components/settings_cell.dart';

class DemoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.primaryColor,
        appBar: AppBar(
          title: const Text("Demo View"),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        body: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 20)),
            padded(const AppText(
              'Title 1',
            )),
            padded(const AppText(
              'Title 2',
              type: AppTextType.title2,
            )),
            padded(const AppText(
              'Title 3',
              type: AppTextType.title3,
            )),
            padded(const AppText(
              'Title 3',
              type: AppTextType.titleSecondary3,
            )),
            padded(const AppText(
              'Body 1',
              type: AppTextType.body1,
            )),
            padded(const AppText(
              'Body 2',
              type: AppTextType.body2,
            )),
            const SizedBox(
              height: 10,
            ),
            padded(const AppText(
              'Loading view',
              type: AppTextType.titleSecondary3,
            )),
            padded(AppButtonFilled('Show Dialog [3 sec close delay]', onPressed: () {
              //
              showLoadingView(context);
              Future.delayed(const Duration(seconds: 3), () {
                hideLoadingView(context);
              });
            })),
            const SizedBox(height: 10),
            padded(AppButtonFilled('Show Dialog x2 [3 sec close delay]', onPressed: () {
              //
              showLoadingView(context);
              showLoadingView(context);

              Future.delayed(const Duration(seconds: 3), () {
                hideLoadingView(context);
              });
            })),
            const SizedBox(height: 10),
            padded(AppButtonFilled('Show Dialog + error [3 sec close delay]', onPressed: () {
              //
              showErrorOverlay(Exception("Error"), context: context);
              showLoadingView(context);

              Future.delayed(const Duration(seconds: 1), () {
                hideLoadingView(context);
              });
            })),
            const SizedBox(height: 12),
            padded(AppButtonFilled('Sign Out', onPressed: () {
              context.read<AuthenticationBloc>().add(const AuthenticationEvent.signOut());
            })),
            const SizedBox(height: 10),
            padded(AppButtonFilled(
              'Button',
              onPressed: () {},
              enabled: false,
            )),
            const SizedBox(height: 10),
            padded(AppButtonFilled(
              'Refresh authentication',
              type: AppButtonType.secondary,
              onPressed: () {
                context.read<AuthenticationBloc>().add(const AuthenticationEvent.reauthenticate());
              },
            )),
            const SizedBox(height: 10),
            padded(AppButtonFilled(
              'Button',
              type: AppButtonType.secondary,
              iconLeft: const Icon(Icons.settings, size: 20, color: Colors.white),
              color: Colors.blueGrey,
              onPressed: () {},
            )),
            const SizedBox(height: 10),
            Center(
              child: AppButtonText(
                'Button',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10),
            padded(AppTag(context.theme.accentColor, 'Tagged')),
            const SizedBox(height: 10),
            padded(AppTag(
              context.theme.accentSecondaryLightColor,
              '78%',
              iconLeft: const Icon(Icons.star, color: Colors.white),
            )),
            const SizedBox(height: 10),
            padded(const AppTextField(hint: 'Hint text')),
            const SizedBox(height: 10),
            padded(Container(
              height: 160,
              child: const AppTextField(hint: 'Hint long text'),
            )),
            const SizedBox(height: 10),
            padded(AppTextFieldWithIcon(
                hint: 'Hint text', leftIcon: context.theme.locationWhiteImage)),
            const SizedBox(height: 10),
            padded(const AppTextFieldDropdown(hint: 'Hint text')),
            const SizedBox(height: 10),
            padded(const AppTextFieldPhone(<String>["+32", "+33"],
                selectedValue: "+33", hint: 'Phone number')),
            const SizedBox(height: 10),
            padded(const SettingsCell()),
            const SizedBox(height: 10),
            padded(AppRadioButton(<String>['Option 1', 'Option 2', 'Option 3'])),
            const SizedBox(height: 10),
            padded(const AppSlider(value: 50)),
            const SizedBox(height: 10),
            padded(const AppRangeSlider(
              values: RangeValues(20, 50),
            )),
            const SizedBox(height: 10),
          ],
        ));
  }

  Widget padded(Widget child) =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 30), child: child);
}
