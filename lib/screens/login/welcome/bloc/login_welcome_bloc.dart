import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/screens/login/welcome/bloc/login_welcome_event.dart';
import 'package:twelv/screens/login/welcome/bloc/login_welcome_state.dart';

class LoginWelcomeBloc extends Bloc<LoginWelcomeEvent, LoginWelcomeState> {
  final AuthenticationBloc authenticationBloc;

  LoginWelcomeBloc(List<String> phoneNumberPrefixes, this.authenticationBloc)
      : super(LoginWelcomeState.initial(phoneNumberPrefixes));

  @override
  Stream<LoginWelcomeState> mapEventToState(
    LoginWelcomeEvent event,
  ) async* {
    if (event is PhoneNumberProvided) {
      authenticationBloc
          .add(AuthenticationEvent.authenticateByPhone(phoneNumber: event.phoneNumber));
    } else if (event is FacebookClicked) {
      authenticationBloc.add(const AuthenticationEvent.authenticateByFacebook());
    } else if (event is AppleSignInClicked) {
      authenticationBloc.add(const AuthenticationEvent.authenticateByApple());
    }
    yield const LoginWelcomeState.loading();
  }
}
