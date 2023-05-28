import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:twelv/assets/theme/chat_theme.dart';
import 'package:twelv/blocs/location/location_bloc.dart';
import 'package:twelv/blocs/location/location_event.dart';
import 'package:twelv/blocs/location/location_state.dart' as location;
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';
import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
import 'package:twelv/screens/home/chat/bloc/chat_event.dart';
import 'package:twelv/screens/home/home_view.dart';
import 'package:twelv/screens/home/home_view_nav_parent.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/bloc/profile_state.dart' as profile;
import 'package:twelv/services/analytics/analytics_tracker.dart';

class HomeViewBlocParent extends StatelessWidget {
  final HomeScreenViewSettings? viewSettings;

  const HomeViewBlocParent({Key? key, this.viewSettings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamChat(
      client: DependenciesContainer().get<StreamChatClient>(),
      streamChatThemeData: createChatTheme(context),
      onBackgroundEventReceived: (Event e) =>
          chatBackgroundEvent(e, DependenciesContainer().get<StreamChatClient>()),
      child: MultiBlocProvider(
          providers: <BlocProvider<dynamic>>[
            BlocProvider<LocationBloc>(
              create: (_) => DependenciesContainer().get<LocationBloc>(),
            ),
            BlocProvider<ProfileBloc>(
                create: (BuildContext context) => DependenciesContainer().get<ProfileBloc>()
                  ..locationBloc = context.read<LocationBloc>()),
            BlocProvider<ExplorerBloc>(
              create: (BuildContext context) => DependenciesContainer().get<ExplorerBloc>()
                ..profileBloc = context.read<ProfileBloc>(),
            ),
            BlocProvider<LikesBloc>(
              create: (BuildContext context) => DependenciesContainer().get<LikesBloc>()
                ..explorerBloc = context.read<ExplorerBloc>()
                ..profileBloc = context.read<ProfileBloc>(),
            ),
            BlocProvider<ChatBloc>(
                create: (BuildContext context) => DependenciesContainer().get<ChatBloc>()
                  ..explorerBloc = context.read<ExplorerBloc>()
                  ..likesBloc = context.read<LikesBloc>()),
            BlocProvider<HoroscopeBloc>(
              create: (_) => DependenciesContainer().get<HoroscopeBloc>(),
            ),
          ],
          child: BlocListener<LocationBloc, location.LocationState>(
            listener: (BuildContext context, location.LocationState state) {
              if (state is location.Loading) {
                showLoadingView(context);
              } else {
                hideLoadingView(context);
                context.read<ExplorerBloc>().add(const ExplorerEvent.fetch());
              }
            },
            child: BlocBuilder<ProfileBloc, profile.ProfileState>(
              buildWhen: (_, profile.ProfileState state) =>
                  state is profile.ProfileCurrentUserState,
              builder: (BuildContext context, profile.ProfileState state) {
                if (state is profile.Initial) {
                  context.read<ChatBloc>().add(const ChatEvent.initialize());
                  context.read<LocationBloc>().add(const LocationEvent.updateApi(askAgain: false));
                }
                DependenciesContainer().get<AnalyticsTracker>().currentUser =
                    (state as profile.ProfileCurrentUserState).user;

                return CurrentUserWidget(
                    currentUser: (state as profile.ProfileCurrentUserState).user,
                    child: HomeViewNavigationParent(
                      viewSettings: viewSettings,
                    ));
              },
            ),
          )),
    );
  }
}
