import 'package:dio/dio.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/screens/document/bloc/document_bloc.dart';
import 'package:twelv/screens/document/bloc/document_model.dart';
import 'package:twelv/services/network/api/document_client.dart';

class DocumentModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(
          () => DocumentClient(di.get<Dio>(), baseUrl: di.get<Environment>().apiBaseUrl))
      ..registerFactory(() => DocumentModel(di.get<DocumentClient>()))
      ..registerFactory(() => DocumentBloc(di.get<DocumentModel>()));
  }
}
