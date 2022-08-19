import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_switch_row.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/notification_settings.dart';
import 'package:twelv/model/user/user_notification_settings_extension.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_bloc.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_event.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_state.dart';

class SettingsNotificationView extends StatefulWidget {
  final NotificationSettings settings;

  const SettingsNotificationView({required this.settings, Key? key}) : super(key: key);

  @override
  _SettingsNotificationViewState createState() => _SettingsNotificationViewState();
}

class _SettingsNotificationViewState extends State<SettingsNotificationView> {
  late NotificationSettings _settings;
  late NotificationSettings _savedSettings;

  @override
  void initState() {
    _settings = NotificationSettings.clone(widget.settings);
    _savedSettings = NotificationSettings.clone(widget.settings);
    super.initState();
  }

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
            ))),
        body: BlocListener<SettingsNotificationsBloc, SettingsNotificationsState>(
          listener: (_, SettingsNotificationsState state) {
            if (state is Settings) {
              setState(() {
                _settings = NotificationSettings.clone(state.notificationSettings);
                _savedSettings = NotificationSettings.clone(state.notificationSettings);
              });
            }
          },
          child: _buildContent(),
        ));
  }

  Widget _buildButton() => AppButtonFilled(
        Str.of(context).settingsNotificationsSaveBtnTitle,
        enabled: isChanged(),
        onPressed: () => context
            .read<SettingsNotificationsBloc>()
            .add(SettingsNotificationsEvent.update(notificationSettings: _settings)),
      );

  bool isChanged() => _savedSettings.notEqual(_settings);

  Widget _buildContent() => Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[_buildScroll(), _buildButton()],
        ),
      );

  Widget _buildScroll() => Expanded(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppText(Str.of(context).settingsNotificationsTitle),
            padded(
                AppText(
                  Str.of(context).settingsNotificationsDescription,
                  type: AppTextType.body2,
                ),
                top: 15),
            padded(
                AppSwitchRow(
                  title: Str.of(context).settingsNotificationsMatchSwitchTitle,
                  isOn: _settings.match ?? true,
                  onChanged: (bool isOn) => setState(() {
                    _settings.match = isOn;
                  }),
                ),
                top: 10),
            AppSwitchRow(
              title: Str.of(context).settingsNotificationsMessagesSwitchTitle,
              isOn: _settings.messages ?? true,
              onChanged: (bool isOn) => setState(() {
                _settings.messages = isOn;
              }),
            ),
            AppSwitchRow(
              title: Str.of(context).settingsNotificationsSuperlikesSwitchTitle,
              isOn: _settings.superlike ?? true,
              onChanged: (bool isOn) => setState(() {
                _settings.superlike = isOn;
              }),
            ),
            AppSwitchRow(
              title: Str.of(context).settingsNotificationsHoroscopeSwitchTitle,
              isOn: _settings.horoscope ?? true,
              onChanged: (bool isOn) => setState(() {
                _settings.horoscope = isOn;
              }),
            ),
          ],
        ),
      ));
}
