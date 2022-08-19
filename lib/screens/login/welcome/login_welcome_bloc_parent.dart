import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/login/welcome/bloc/login_welcome_bloc.dart';
import 'package:twelv/screens/login/welcome/bloc/login_welcome_state.dart';
import 'package:twelv/screens/login/welcome/login_welcome_view.dart';

class LoginWelcomeViewBlocParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocProvider<LoginWelcomeBloc>(
        create: (_) => DependenciesContainer().get<LoginWelcomeBloc>(),
        child: BlocConsumer<LoginWelcomeBloc, LoginWelcomeState>(
          buildWhen: (_, LoginWelcomeState current) => current is Initial,
          builder: (_, LoginWelcomeState state) =>
              LoginWelcomeView(phoneNumberPrefixes: (state as Initial).availablePrefixes),
          listener: (BuildContext context, LoginWelcomeState state) =>
              manageLoadingView(context, show: state is Loading),
        ),
      );
}
