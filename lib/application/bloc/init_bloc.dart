import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'init_event.dart';
part 'init_state.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc() : super(SplashInitState());

  @override
  Stream<InitState> mapEventToState(InitEvent event) async* {
    if (event is AppDidLoadInitEvent) {
      yield SplashInitState();
      await Future.delayed(const Duration(milliseconds: 100));
      yield SplashFinishedInitState();
    }
  }
}
