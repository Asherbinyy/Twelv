import 'package:dio/dio.dart';
import 'package:twelv/common/components/places_textfield/api/places_textfield_api_client.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_bloc.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_model.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';

class PlacesTextFieldModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory<PlacesRestApiClient>(
        () => PlacesRestApiClient(di.get<Dio>()),
      )
      ..registerFactory<PlacesTextFieldModel>(
        () => PlacesTextFieldModel(
            apiClient: di.get<PlacesRestApiClient>(),
            apiKey: di.get<Environment>().googlePlacesApiKey,
            minimumSearchTextLength: 2),
      )
      ..registerFactory<PlacesTextFieldBloc>(
        () => PlacesTextFieldBloc(di.get<PlacesTextFieldModel>()),
      );
  }
}
