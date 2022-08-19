import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/model/user/notification_settings.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_bloc.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_event.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_state.dart';
import 'package:twelv/screens/settings/notifications/settings_notification_view.dart';

class SettingsNotificationsBlocParent extends StatelessWidget {
  const SettingsNotificationsBlocParent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<SettingsNotificationsBloc>(
        create: (_) => DependenciesContainer().get<SettingsNotificationsBloc>()
          ..add(const SettingsNotificationsEvent.initial()),
        child: BlocConsumer<SettingsNotificationsBloc, SettingsNotificationsState>(
          buildWhen: (_, SettingsNotificationsState state) => state is Settings,
          builder: (_, SettingsNotificationsState state) => SettingsNotificationView(
            settings:
                (state is Settings) ? state.notificationSettings : NotificationSettings.allTrue(),
          ),
          listener: (BuildContext context, SettingsNotificationsState state) {
            if (state is ApiError) {
              showErrorOverlay(state.error, context: context);
            }
            manageLoadingView(context, show: state is Loading);
          },
        ),
      );
}
