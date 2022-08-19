import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';
import 'package:twelv/screens/onboarding/zodiac/bloc/onboarding_zodiac_bloc.dart';
import 'package:twelv/screens/onboarding/zodiac/bloc/onboarding_zodiac_event.dart';
import 'package:twelv/screens/onboarding/zodiac/bloc/onboarding_zodiac_state.dart';
import 'package:twelv/screens/onboarding/zodiac/onboarding_zodiac_view.dart';

class OnboardingZodiacViewBlocParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (BuildContext context, OnboardingState state) => BlocProvider<OnboardingZodiacBloc>(
        create: (_) => DependenciesContainer().get<OnboardingZodiacBloc>()
          ..onboardingBloc = context.read<OnboardingBloc>()
          ..add(const OnboardingZodiacEvent.getZodiac()),
        child: BlocConsumer<OnboardingZodiacBloc, OnboardingZodiacState>(
          listener: (BuildContext context, OnboardingZodiacState state) {
            if (state is Loading || state is Initial) {
              showLoadingView(context);
            } else {
              hideLoadingView(context);
            }
          },
          builder: (BuildContext context, OnboardingZodiacState state) => OnboardingZodiacView(
            (state is Succeeded) ? state.zodiac : null,
            (state is Error) ? state.error : null,
          ),
        ),
      ),
    );
  }
}
