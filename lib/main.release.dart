import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/main.dart';

void main() {
  DependenciesContainer().registerSingleton(Environment.release);
  mainDelegate();
}
