import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_state.dart';
import 'package:twelv/services/location/gps_position.dart';
import 'package:twelv/services/navigation/navigation.dart';

class LocationPermissionView extends StatefulWidget {
  const LocationPermissionView({Key? key}) : super(key: key);

  @override
  _LocationPermissionViewState createState() => _LocationPermissionViewState();
}

class _LocationPermissionViewState extends State<LocationPermissionView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset(context.theme.backImage.assetName),
            ),
            title: Center(
                child: Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Image(image: context.theme.logoHeaderImage),
            ))),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            AppText(Str.of(context).locationPermissionViewTitle),
            padded(AppText(Str.of(context).locationPermissionViewMessage, type: AppTextType.body1),
                top: 15),
            const Spacer(),
            Center(
              child: paddedSymmetric(
                  Image(
                    image: context.theme.locationBackground,
                  ),
                  horizontal: 30),
            ),
            const Spacer(),
            _buildContinue(),
          ]),
        ),
      );

  Widget _buildContinue() => BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (BuildContext context, OnboardingState state) {
        final bool locationAvailable = state.lat != null && state.lon != null;
        return AppButtonFilled(
          locationAvailable
              ? Str.of(context).commonContinue
              : Str.of(context).locationPermissionActivateButton,
          onPressed: () => _continue(locationAvailable),
        );
      });

  void _continue(bool locationAvailable) {
    if (locationAvailable) {
      navigator(NavigationService.onboarding).navigateTo(OnboardingRoutes.notifications);
    } else {
      _tryToFetchPosition();
    }
  }

  Future<void> _tryToFetchPosition() async {
    Position position = PositionHelper.zero;
    try {
      showLoadingView(context);
      position = await getGpsPosition(context);
      hideLoadingView(context);
    } catch (e) {
      hideLoadingView(context);
      showErrorMessageOverlay(e.toString(), context: context);
    }
    context
        .read<OnboardingBloc>()
        .add(OnboardingEvent.locationEntered(lat: position.latitude, lon: position.longitude));
  }
}
