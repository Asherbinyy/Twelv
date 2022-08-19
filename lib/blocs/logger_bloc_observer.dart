import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/di/app_module.dart';

class LoggerBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger().v('${bloc.runtimeType} $change');
  }
}
