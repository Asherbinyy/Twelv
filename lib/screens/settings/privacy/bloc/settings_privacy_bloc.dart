import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_event.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_event.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_model.dart';
import 'package:twelv/screens/settings/privacy/bloc/settings_privacy_state.dart';

class SettingsPrivacyBloc extends Bloc<SettingsPrivacyEvent, SettingsPrivacyState> {
  final SettingsPrivacyModel model;
  ProfileBloc? profileBloc;

  SettingsPrivacyBloc(this.model) : super(const SettingsPrivacyState.initial());

  @override
  Stream<SettingsPrivacyState> mapEventToState(
    SettingsPrivacyEvent event,
  ) async* {
    try {
      if (event is Check) {
        yield const SettingsPrivacyState.loading();
      } else if (event is Update) {
        await model.updateCookieConsent(
            analytics: event.analytics,
            errorTracking: event.errorTracking,
            sensitiveData: event.sensitiveData);
      } else if (event is Submit) {
        yield const SettingsPrivacyState.loading();
        await model.submit();
        profileBloc?.add(const ProfileEvent.reloadUser());
        yield const SettingsPrivacyState.succeeded();
      }
      yield SettingsPrivacyState.data(await model.getSettings());
    } on DioError catch (e) {
      yield SettingsPrivacyState.apiError(e);
    }
  }
}
