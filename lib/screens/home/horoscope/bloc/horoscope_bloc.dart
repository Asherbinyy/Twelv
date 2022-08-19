import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_event.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_model.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_state.dart';

class HoroscopeBloc extends Bloc<HoroscopeEvent, HoroscopeState> {
  final HoroscopeModel _horoscopeModel;

  HoroscopeBloc(this._horoscopeModel) : super(const HoroscopeState.initial());

  @override
  Stream<HoroscopeState> mapEventToState(
    HoroscopeEvent event,
  ) async* {
    if (event is GetHoroscope) {
      if (_horoscopeModel.showLoading()) {
        yield const HoroscopeState.loading();
      }

      try {
        yield HoroscopeState.succeeded((await _horoscopeModel.getHoroscope()).horoscope);
      } on DioError catch (e) {
        yield HoroscopeState.error(e);
      }
    }
  }
}
