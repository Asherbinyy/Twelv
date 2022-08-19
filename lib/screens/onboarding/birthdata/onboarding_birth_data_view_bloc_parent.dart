import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/model/onboarding/birth_data_view_data.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/birthdata/bloc/onboarding_birth_data_bloc.dart';
import 'package:twelv/screens/onboarding/birthdata/bloc/onboarding_birth_data_state.dart';
import 'package:twelv/screens/onboarding/birthdata/onboarding_birth_data_view.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';
import 'package:twelv/services/navigation/navigation.dart';

import 'bloc/onboarding_birth_data_bloc.dart';

class BirthDataViewBlocParent extends StatelessWidget {
  const BirthDataViewBlocParent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (BuildContext context, OnboardingState state) =>
          BlocProvider<OnboardingBirthDataBloc>(
        create: (_) => DependenciesContainer().get<OnboardingBirthDataBloc>()
          ..onboardingBloc = context.read<OnboardingBloc>(),
        child: BlocConsumer<OnboardingBirthDataBloc, OnboardingBirthDataState>(
          builder: (BuildContext context, OnboardingBirthDataState state) =>
              OnboardingBirthDataView(
            settings: BirthDataViewBlocParentSettings.onboarding(context.read<OnboardingBloc>()),
          ),
          listener: (BuildContext context, OnboardingBirthDataState state) {
            manageLoadingView(context, show: state is Loading);
            if (state is Error) {
              showErrorOverlay(state.error, context: context);
            } else if (state is Succeeded) {
              navigator(NavigationService.onboarding).navigateTo(OnboardingRoutes.zodiac);
            }
          },
          buildWhen: (_, OnboardingBirthDataState state) => state is Initial,
        ),
      ),
    );
  }
}
