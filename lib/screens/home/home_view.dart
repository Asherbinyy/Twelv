import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';
import 'package:twelv/screens/explorer/explorer_screen_view.dart';
import 'package:twelv/screens/home/chat/chat_bloc_parent.dart';
import 'package:twelv/screens/home/components/home_appbar.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_bloc.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_event.dart';
import 'package:twelv/screens/home/horoscope/horoscope_view.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_event.dart';
import 'package:twelv/screens/profile/profile_my_view.dart';
import 'package:twelv/services/firebase/firebase_deeplink_tracker.dart';
import 'package:twelv/services/navigation/navigation.dart';

enum HomePageType { explorer, horoscope, matches, profile }

class HomeScreenViewSettings {
  HomePageType type;
  bool? likes;

  HomeScreenViewSettings(this.type);
}

class HomeScreenView extends StatefulWidget {
  final HomeScreenViewSettings? viewSettings;

  const HomeScreenView({this.viewSettings, Key? key}) : super(key: key);

  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  late HomePageType _selectedType;

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    _selectedType = widget.viewSettings?.type ?? HomePageType.explorer;
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Future<void>.delayed(const Duration(milliseconds: 1500), () {
        if (widget.viewSettings?.likes == true) {
          navigator(NavigationService.home).navigateTo(HomeRoutes.likes);
          context.read<LikesBloc>().add(const LikesEvent.fetch());
          return;
        } else if (widget.viewSettings?.type == HomePageType.horoscope) {
          context.read<HoroscopeBloc>().add(const HoroscopeEvent.getHoroscope());
        }

        final HomeScreenViewSettings? settings =
            DependenciesContainer().get<FirebaseDeeplinkTracker>().consumeLink();
        if (settings != null) {
          if (settings.likes == true) {
            navigator(NavigationService.home).navigateTo(HomeRoutes.likes);
            context.read<LikesBloc>().add(const LikesEvent.fetch());
          } else {
            setState(() {
              if (settings.type == HomePageType.horoscope) {
                manageLoadingView(context, show: false);
              }
              _selectedType = settings.type;
            });
          }
        }
      });
    });
  }

  final List<Widget> pages = <Widget>[
    const ExplorerScreenView(
      key: PageStorageKey<String>("explorerScreen"),
    ),
    const HoroscopeView(
      key: PageStorageKey<String>("horoscope"),
    ),
    const ChatBlocParent(
      key: PageStorageKey<String>("matches"),
    ),
    const ProfileMyView(
      key: PageStorageKey<String>("profile"),
    ),
  ];

  void _onItemTapped(int selectedIndex) {
    final HomePageType index = HomePageType.values[selectedIndex];
    setState(() {
      if (index == HomePageType.explorer) {
        context.read<ExplorerBloc>().add(const ExplorerEvent.fetch());
      } else if (index == HomePageType.horoscope) {
        context.read<HoroscopeBloc>().add(const HoroscopeEvent.getHoroscope());
      }
      _selectedType = index;
    });
  }

  Future<bool> _onBackPressed() async {
    final bool allowBack = _selectedType == HomePageType.explorer;
    if (!allowBack) {
      setState(() {
        _selectedType = HomePageType.explorer;
      });
    }
    return allowBack;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: HomeAppBar(pageType: _selectedType),
        body: WillPopScope(
          onWillPop: _onBackPressed,
          child: PageStorage(
            bucket: bucket,
            child: pages[_selectedType.index],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(context.theme.explorerBarItemImage),
              label: Str.of(context).homeTabBarExplorer,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(context.theme.horoscopeBarItemImage),
              label: Str.of(context).homeTabBarHoroscope,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(context.theme.matchesBarItemImage),
              label: Str.of(context).homeTabBarMatches,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(context.theme.profileBarItemImage),
              label: Str.of(context).homeTabBarProfil,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedType.index,
          selectedItemColor: context.theme.accentColor,
          unselectedItemColor: context.theme.tabBarUnselected,
          selectedLabelStyle: context.theme.tabBarTextStyle,
          // ignore: no-equal-arguments
          unselectedLabelStyle: context.theme.tabBarTextStyle,
          onTap: _onItemTapped,
        ),
      );
}
