import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/location/location_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';
import 'package:twelv/screens/onboarding/onboarding_view_nav_parent.dart';
import 'package:twelv/services/navigation/navigation.dart';

class OnboardingViewBlocParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<LocationBloc>(
          create: (BuildContext context) => DependenciesContainer().get<LocationBloc>(),
        ),
        BlocProvider<OnboardingBloc>(
          create: (BuildContext context) => DependenciesContainer().get<OnboardingBloc>()
            ..locationBloc = context.read<LocationBloc>(),
        ),
      ],
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        builder: (BuildContext context, OnboardingState state) {
          return OnboardingViewNavigationParent();
        },
        listener: (BuildContext context, OnboardingState state) {
          hideLoadingView(context);
          if (state.isFinished) {
            navigator(NavigationService.onboarding).popAllAndNavigateTo(OnboardingRoutes.tutorial4);
          }
        },
      ),
    );
  }
}
