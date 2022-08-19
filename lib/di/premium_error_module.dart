import 'package:twelv/di/di.dart';
import 'package:twelv/services/errors/premium_actions_error_resolver.dart';

class PremiumErrorModule extends Module {
  @override
  Future<void> installDependencies(DependenciesContainer di) async {
    di.registerFactory(() => PremiumActionsErrorResolver());
  }
}
