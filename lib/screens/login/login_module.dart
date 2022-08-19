import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/di/environment.dart';
import 'package:twelv/screens/login/welcome/bloc/login_welcome_bloc.dart';

class LoginModule extends Module {
  @override
  Future<dynamic> installDependencies(DependenciesContainer di) async {
    di.registerFactory(() => LoginWelcomeBloc(
        di.get<Environment>().availablePhoneNumPrefixes, di.get<AuthenticationBloc>()));
  }
}
