import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/location/location_event.dart';
import 'package:twelv/blocs/location/location_model.dart';
import 'package:twelv/blocs/location/location_state.dart';
import 'package:twelv/services/location/gps_position.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationModel model;

  LocationBloc(this.model) : super(const LocationState.initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    try {
      if (event is UpdateApi) {
        yield const LocationState.loading();
        await model.updateLocation(askAgainOrOpenSettings: event.askAgain);
        yield const LocationState.success();
      }
    } on DioError catch (e) {
      yield LocationState.apiError(e);
    } on GPSPermissionDeniedException catch (e) {
      yield LocationState.gpsDenied(e);
    } on Exception catch (e) {
      yield LocationState.gpsDenied(e);
    }
  }
}
