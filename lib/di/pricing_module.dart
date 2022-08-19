import 'package:dio/dio.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/screens/premium/bloc/pricing_bloc.dart';
import 'package:twelv/screens/premium/bloc/pricing_model.dart';
import 'package:twelv/services/network/products_client.dart';

class PricingModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(
          () => ProductsRestClient(di.get<Dio>(), baseUrl: di.get<Environment>().apiBaseUrl))
      ..registerFactory(() => PricingModel(di.get<ProductsRestClient>()))
      ..registerFactory(() => PricingBloc(di.get<PricingModel>()));
  }
}
