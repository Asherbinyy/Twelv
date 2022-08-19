import 'package:twelv/blocs/location/location_bloc.dart';
import 'package:twelv/blocs/location/location_model.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/services/analytics/location_permission_tracker.dart';
import 'package:twelv/services/network/api/user_client.dart';

class LocationModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di
      ..registerFactory(
          () => LocationModel(di.get<UserRestClient>(), di.get<LocationPermissionTracker>()))
      ..registerFactory(() => LocationBloc(di.get<LocationModel>()));
  }
}
