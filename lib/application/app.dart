import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/application/bloc/init_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/current_user_repository.dart';
import 'package:twelv/blocs/auth/authorization/authorization_bloc.dart';
import 'package:twelv/blocs/auth/authorization/authorization_event.dart';
import 'package:twelv/blocs/auth/authorization/authorization_state.dart';
import 'package:twelv/components/app_root_media_query_repository.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_bloc.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_bloc_event.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_state.dart' as gdpr;
import 'package:twelv/services/analytics/analytics_tracker.dart';
import 'package:twelv/services/analytics/short_analytics_tracker.dart';
import 'package:twelv/services/navigation/navigation.dart';
import 'package:twelv/strings.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<InitBloc>(
            create: (_) => DependenciesContainer().get<InitBloc>()..add(AppDidLoadInitEvent())),
        BlocProvider<GdprBloc>(create: (_) => DependenciesContainer().get<GdprBloc>()),
        BlocProvider<AuthorizationBloc>(
            create: (_) => DependenciesContainer().get<AuthorizationBloc>()),
        BlocProvider<AuthenticationBloc>(
            create: (_) => DependenciesContainer().get<AuthenticationBloc>()),
      ],
      child: MultiBlocListener(
        listeners: <BlocListener<dynamic, dynamic>>[
          BlocListener<InitBloc, InitState>(listener: (BuildContext context, InitState state) {
            if (state is SplashFinishedInitState) {
              context.read<AuthorizationBloc>().add(const AuthorizationEvent.restoreSession());
            }
          }),
          BlocListener<GdprBloc, gdpr.GdprState>(
              listener: (BuildContext context, gdpr.GdprState state) {
            if (state is gdpr.Accepted) {
              final CurrentUser? currentUser =
                  DependenciesContainer().get<CurrentUserRepository>().currentUser;
              if (currentUser?.isOnboarded == false) {
                DependenciesContainer()
                    .get<ShortAnalyticsTracker>()
                    .trackEvent(ShortAnalyticsEvent.userSignup);
              }
              navigator(NavigationService.root).popAllAndNavigateTo(
                  currentUser?.isOnboarded == true ? GlobalRoutes.home : GlobalRoutes.onboarding);
            } else if (state is gdpr.NotAccepted) {
              navigator(NavigationService.root).popAllAndNavigateTo(GlobalRoutes.gdpr);
            }
          }),
          BlocListener<AuthorizationBloc, AuthorizationState>(
              listener: (BuildContext context, AuthorizationState state) async {
            if (state is Unauthorized) {
              navigator(NavigationService.root).popAllAndNavigateTo(GlobalRoutes.login);
            } else if (state is Authorized) {
              context.read<GdprBloc>().add(const GdprEvent.check());
            }
          })
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          navigatorKey: navigator(NavigationService.root).navigatorKey,
          initialRoute: GlobalRoutes.splash,
          onGenerateRoute: generateGlobalRoute,
          onUnknownRoute: generateUnknowRoute,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
          builder: (BuildContext context, Widget? child) => child == null
              ? const SizedBox.shrink()
              : AppRootMediaQueryRepository(mediaQueryData: MediaQuery.of(context), child: child),
          navigatorObservers: <NavigatorObserver>[
            DependenciesContainer().get<AnalyticsTracker>().navigationObserver
          ],
        ),
      ),
    );
  }
}
