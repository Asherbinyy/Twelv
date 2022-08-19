import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/auth/authorization/authorization_bloc.dart';
import 'package:twelv/model/profile/finish_onboarding_request.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_event.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_model.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_state.dart';

class OnboardingNotificationsBloc
    extends Bloc<OnboardingNotificationsEvent, OnboardingNotificationsState> {
  OnboardingNotificationsBloc(this._model) : super(const OnboardingNotificationsState.initial());

  final OnboardingNotificationsModel _model;
  late OnboardingBloc onboardingBloc;
  late AuthorizationBloc authorizationBloc;

  @override
  Stream<OnboardingNotificationsState> mapEventToState(OnboardingNotificationsEvent event) async* {
    try {
      yield const OnboardingNotificationsState.loading();
      if (event is Activated) {
        final String? notificationsToken = await _model.tryToGetNotificationsToken();
        _finishOnboarding(notificationsToken: notificationsToken);
      } else if (event is Skipped) {
        _finishOnboarding();
      }
    } on DioError catch (e) {
      yield OnboardingNotificationsState.error(e);
    }
  }

  Future<void> _finishOnboarding({String? notificationsToken}) async {
    await onboardingBloc.model.finishOnboarding(FinishOnboardingRequest.fromOnboardingState(
        onboardingBloc.state,
        notificationsToken: notificationsToken));
    onboardingBloc.add(const OnboardingEvent.finished());
  }
}
