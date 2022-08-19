import 'package:twelv/di/di.dart';
import 'package:twelv/services/analytics/att_service.dart';

class ATTServiceModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di.registerFactory(() => ATTService());
  }
}
