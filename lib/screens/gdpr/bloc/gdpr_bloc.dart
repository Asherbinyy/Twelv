import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/model/documents/user_consent.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_bloc_event.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_state.dart';

import 'gdpr_model.dart';

class GdprBloc extends Bloc<GdprEvent, GdprState> {
  final GdprModel _model;

  GdprBloc(this._model) : super(const GdprState.initial());

  @override
  Stream<GdprState> mapEventToState(GdprEvent event) async* {
    yield const GdprState.loading();
    bool isAccepted = false;

    if (event is UserDecided) {
      if (event.accepted) {
        try {
          await _model.postConsent(UserConsent(termsOfUse: event.accepted));
        } on DioError catch (e) {
          yield GdprState.apiError(e);
          return;
        }
      }
      isAccepted = event.accepted;
    } else if (event is Check) {
      isAccepted = await _model.isConsentDateTermsOfUseValid();
    }
    yield isAccepted ? const GdprState.accepted() : const GdprState.notAccepted();
  }
}
