// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/image/circle_image_network_border.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';

enum NoProfileViewType { emptyList, deniedLocation }

class ExplorerNoProfilesView extends StatelessWidget {
  final NoProfileViewType type;
  final VoidCallback onPressedButton;

  const ExplorerNoProfilesView({required this.type, required this.onPressedButton, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CurrentUser currentUser = CurrentUserWidget.of(context).currentUser;

    return Column(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Center(
                child: Image(image: context.theme.noProfilesBackgroundImage),
              ),
              if (currentUser.avatar != null)
                Center(
                  child: CircleImageNetworkBorder(
                    url: currentUser.avatar!.url,
                    radius: 75,
                    useCache: true,
                  ),
                ),
              Positioned(
                  top: 100,
                  left: 10,
                  right: 10,
                  child: AppText(
                    _getMessage(context),
                    type: AppTextType.title2,
                    align: TextAlign.center,
                  )),
              // Filters button commented
              Positioned(
                bottom: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: AppButtonFilled(
                    _getButtonTitle(context),
                    type: AppButtonType.secondary,
                    onPressed: onPressedButton,
                    fillParent: false,
                  ),
                ),
              ),
              if (type == NoProfileViewType.emptyList)
                Positioned(
                  bottom: 40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: AppButtonText(
                      Str.of(context).homeEmptyListRefreshProfilesButton,
                      onPressed: () =>
                          context.read<ExplorerBloc>().add(const ExplorerEvent.fetch()),
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  String _getMessage(BuildContext context) {
    switch (type) {
      case NoProfileViewType.emptyList:
        return Str.of(context).homeEmptyListTitleMessage;
      case NoProfileViewType.deniedLocation:
        return Str.of(context).homeRecommendationsEmptyNoLocationMessage;
    }
  }

  String _getButtonTitle(BuildContext context) {
    switch (type) {
      case NoProfileViewType.emptyList:
        return Str.of(context).homeEmptyListModifyFiltersButton;
      case NoProfileViewType.deniedLocation:
        return Str.of(context).homeRecommendationsEmptyAllowLocationButton;
    }
  }
}
