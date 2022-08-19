import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/auth/authorization/authorization_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_bloc.dart';
import 'package:twelv/screens/onboarding/notifications/bloc/onboarding_notifications_state.dart';
import 'package:twelv/screens/onboarding/notifications/onboarding_notifications_view.dart';

class OnboardingNotificationsBlocParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingNotificationsBloc>(
        create: (_) => DependenciesContainer().get<OnboardingNotificationsBloc>()
          ..onboardingBloc = context.read<OnboardingBloc>()
          ..authorizationBloc = context.read<AuthorizationBloc>(),
        child: BlocConsumer<OnboardingNotificationsBloc, OnboardingNotificationsState>(
          listenWhen: (_, OnboardingNotificationsState current) => current is! Initial,
          listener: (BuildContext context, OnboardingNotificationsState state) {
            if (state is Error) {
              showErrorOverlay(state.error, context: context);
            }

            manageLoadingView(context, show: state is Loading);
          },
          buildWhen: (_, OnboardingNotificationsState current) => current is Initial,
          builder: (_, __) => OnboardingNotificationsView(),
        ));
  }
}
