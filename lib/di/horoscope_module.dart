import 'package:twelv/di/di.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_bloc.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_model.dart';
import 'package:twelv/services/formatters/formatters.dart';
import 'package:twelv/services/network/api/user_client.dart';

class HoroscopeModule extends Module {
  @override
  Future<dynamic> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(() => HoroscopeModel(di.get<UserRestClient>(), di.get<FormatterService>()))
      ..registerFactory(() => HoroscopeBloc(di.get<HoroscopeModel>()));
  }
}
