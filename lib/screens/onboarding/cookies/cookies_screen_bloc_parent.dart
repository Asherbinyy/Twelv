import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_bloc.dart';
import 'package:twelv/screens/onboarding/cookies/bloc/cookies_state.dart';
import 'package:twelv/screens/onboarding/cookies/cookies_screen.dart';
import 'package:twelv/services/navigation/navigation.dart';

class CookiesScreenBlocParent extends StatelessWidget {
  const CookiesScreenBlocParent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<CookiesBloc>(
        create: (_) => DependenciesContainer().get<CookiesBloc>(),
        child: BlocConsumer<CookiesBloc, CookiesState>(
          listener: (BuildContext context, CookiesState state) {
            manageLoadingView(context, show: state is Loading);
            if (state is Succeeded) {
              navigator(NavigationService.onboarding).navigateTo(OnboardingRoutes.location);
            }
          },
          builder: (_, __) => const CookiesScreen(),
        ),
      );
}
