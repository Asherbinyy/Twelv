import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/components/filters_popup.dart';
import 'package:twelv/screens/home/home_view.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_event.dart';
import 'package:twelv/services/navigation/navigation.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final HomePageType pageType;

  HomeAppBar({required this.pageType, Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    const double elevation = 10;
    const double marginIcon = 8;
    final bool filtersDisabled = !CurrentUserWidget.of(context).currentUser.isLocationProvided;
    switch (widget.pageType) {
      case HomePageType.profile:
        return AppBar(
          title: Image(image: context.theme.logoHeaderImage),
          elevation: elevation,
          backgroundColor: Colors.transparent,
          // ignore: no-equal-arguments
          shadowColor: Colors.transparent,
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(right: marginIcon),
              icon: Image.asset(context.theme.settingsImage.assetName),
              onPressed: () => navigator(NavigationService.home).navigateTo(HomeRoutes.settings),
            )
          ],
          centerTitle: true,
        );
      case HomePageType.explorer:
        return AppBar(
          title: Image(image: context.theme.logoHeaderImage),
          elevation: elevation,
          backgroundColor: Colors.transparent,
          // ignore: no-equal-arguments
          shadowColor: Colors.transparent,
          leading: IconButton(
            padding: const EdgeInsets.only(left: marginIcon),
            onPressed: () {
              navigator(NavigationService.home).navigateTo(HomeRoutes.likes);
              context.read<LikesBloc>().add(const LikesEvent.fetch());
            },
            icon: Image.asset(context.theme.likesHeaderImage.assetName),
          ),
          actions: <Widget>[
            Opacity(
              opacity: filtersDisabled ? context.theme.disabledOpacity : 1,
              child: IconButton(
                padding: const EdgeInsets.only(left: marginIcon),
                onPressed: () => filtersDisabled
                    ? null
                    : showDialog(
                        context: context,
                        useRootNavigator: false,
                        builder: (_) => FiltersPopup(
                              recommendationsFilters: context.read<ExplorerBloc>().model.filters,
                            )),
                icon: Image.asset(context.theme.filtersImage.assetName),
              ),
            )
          ],
          centerTitle: true,
        );
      case HomePageType.horoscope:
        return AppBar(
          title: Image(image: context.theme.logoHeaderImage),
          elevation: elevation,
          backgroundColor: Colors.transparent,
          // ignore: no-equal-arguments
          shadowColor: Colors.transparent,
          centerTitle: true,
        );
      case HomePageType.matches:
        return const SizedBox(height: 20);
      default:
        return AppBar(
          title: Image(image: context.theme.logoHeaderImage),
          elevation: elevation,
          backgroundColor: Colors.transparent,
          // ignore: no-equal-arguments
          shadowColor: Colors.transparent,
          leading: IconButton(
            padding: const EdgeInsets.only(left: marginIcon),
            onPressed: () {
              navigator(NavigationService.home).navigateTo(HomeRoutes.likes);
              context.read<LikesBloc>().add(const FetchData());
            },
            icon: Image.asset(context.theme.likesHeaderImage.assetName),
          ),
          centerTitle: true,
        );
    }
  }
}
