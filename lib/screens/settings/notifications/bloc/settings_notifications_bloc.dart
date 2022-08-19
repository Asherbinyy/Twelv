import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_event.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_model.dart';
import 'package:twelv/screens/settings/notifications/bloc/settings_notifications_state.dart';

class SettingsNotificationsBloc
    extends Bloc<SettingsNotificationsEvent, SettingsNotificationsState> {
  final SettingsNotificationsModel model;

  SettingsNotificationsBloc({
    required this.model,
  }) : super(const SettingsNotificationsState.loading());

  @override
  Stream<SettingsNotificationsState> mapEventToState(
    SettingsNotificationsEvent event,
  ) async* {
    try {
      yield const SettingsNotificationsState.loading();
      if (event is Update) {
        await model.updateSettings(event.notificationSettings);
      }
      yield SettingsNotificationsState.settings(await model.settings);
    } on Exception catch (e) {
      yield SettingsNotificationsState.apiError(e);
    }
  }
}
