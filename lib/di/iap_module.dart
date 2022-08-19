import 'package:dio/dio.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/services/iap/bloc/iap_bloc.dart';
import 'package:twelv/services/iap/bloc/iap_model.dart';
import 'package:twelv/services/iap/in_app_purchase_service.dart';
import 'package:twelv/services/network/api/payment_client.dart';

class IAPModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(
          () => PaymentRestClient(di.get<Dio>(), baseUrl: di.get<Environment>().apiBaseUrl))
      ..registerFactory(() => IAPModel(
          di.get<InAppPurchaseService>(), di.get<Environment>(), di.get<PaymentRestClient>()))
      ..registerFactory(() => IAPBloc(di.get<IAPModel>()));
  }
}
