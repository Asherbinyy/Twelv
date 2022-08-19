import 'package:get_it/get_it.dart';

class DependenciesContainer {
  final GetIt _container = GetIt.instance;

  static final DependenciesContainer _singleton =
      DependenciesContainer._internal();

  factory DependenciesContainer() {
    return _singleton;
  }

  DependenciesContainer._internal();

  T get<T extends Object>([String? instanceName]) {
    return _container.get(instanceName: instanceName);
  }

  void registerSingleton<T extends Object>(T instance, [String? instanceName]) {
    _container.registerSingleton(instance, instanceName: instanceName);
  }

  void registerLazySingleton<T extends Object>(FactoryFunc<T> factory,
      [String? instanceName]) {
    _container.registerLazySingleton(factory, instanceName: instanceName);
  }

  void registerFactory<T extends Object>(FactoryFunc<T> factory,
      [String? instanceName]) {
    _container.registerFactory(factory, instanceName: instanceName);
  }

  Future<dynamic> installModules<T extends Module>(List<T> modules) async {
    for (final Module module in modules) {
      await module.installDependencies(this);
    }
    return;
  }

  void unregisterAll() => _container.reset();
}

abstract class Module {
  Future<dynamic> installDependencies(DependenciesContainer di);
}
