import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_background_view.dart';

class ExplorerBackgroundView extends StatelessWidget {
  const ExplorerBackgroundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBackgroundContainer(
      backgroundImage: context.theme.homeBackgroundImage, child: const SizedBox.shrink());
}
