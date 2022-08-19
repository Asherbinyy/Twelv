import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_event.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_model.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_state.dart';

class CookiesBloc extends Bloc<CookiesEvent, CookiesState> {
  final CookiesModel model;

  CookiesBloc(this.model) : super(CookiesState.initial(model.userConsent));

  @override
  Stream<CookiesState> mapEventToState(
    CookiesEvent event,
  ) async* {
    try {
      if (event is Update) {
        yield const CookiesState.loading();
        await model.updateCookieConsent(
            analytics: event.analytics, errorTracking: event.errorTracking);
        yield CookiesState.succeeded(model.userConsent);
      }
    } on DioError catch (e) {
      yield CookiesState.apiError(e);
    }
  }
}
