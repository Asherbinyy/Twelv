import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/image/circle_image_network_border.dart';
import 'package:twelv/common/extensions/string_extension.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_background_view.dart';
import 'package:twelv/components/app_button_filled_small.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_zodiac_view.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';
import 'package:twelv/screens/profile/bloc/profile_bloc.dart';
import 'package:twelv/screens/profile/components/myprofil_section_card_view.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';
import 'package:twelv/services/iap/model/in_app_purchase_item.dart';
import 'package:twelv/services/navigation/navigation.dart';

class ProfileMyView extends StatelessWidget {
  const ProfileMyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.primaryColor,
        body: AppBackgroundContainer(
          backgroundImage: context.theme.profileBackgroundImage,
          child: SafeArea(child: _buildMySection(context)),
        ),
      );

  Widget _buildMySection(BuildContext context) {
    final CurrentUser currentUser = CurrentUserWidget.of(context).currentUser;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15), // ignore: no-magic-number
        child: Column(
          children: <Widget>[
            if (currentUser.avatar != null)
              padded(
                  Center(
                    child: CircleImageNetworkBorder(
                      url: currentUser.avatar!.url,
                      useCache: true,
                    ),
                  ),
                  top: 31),
            padded(
                AppText(
                  "${currentUser.name ?? ""}, ${currentUser.age}",
                  lines: 2,
                  align: TextAlign.center,
                ),
                top: 5),
            padded(
                AppButtonFilledSmall(
                  Str.of(context).myProfilEditButton,
                  iconLeft: context.theme.editImage,
                  onPressed: () =>
                      navigator(NavigationService.home).navigateTo(HomeRoutes.profileEdit),
                ),
                top: 5),
            padded(_buildZodiacSection(context, currentUser), top: 20),
            padded(_ProfileMyTestCompatibilityView(), top: 20),
            padded(
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(child: _buildSubscriptionSection(context, currentUser)),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(child: _buildCreditsSection(context, currentUser))
                    ],
                  ),
                ),
                top: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildZodiacSection(BuildContext context, CurrentUser currentUser) => GestureDetector(
        onTap: () =>
            navigator(NavigationService.home).navigateTo(HomeRoutes.zodiac, args: currentUser),
        child: MyProfilSectionCardView(
          showChevron: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 0, 15), // ignore: no-magic-number
            child: AppZodiacView.fromUser(
              currentUser,
              titleTextStyle: context.theme.textTheme.bodyText1?.copyWith(
                  fontSize: 20, // ignore: no-magic-number
                  fontWeight: FontWeight.bold,
                  color: context.theme.textDarkColor), // ignore: no-magic-number
              subtitleTextStyle: context.theme.textTheme.bodyText1!.copyWith(
                  fontSize: 16, color: context.theme.textDarkColor), // ignore: no-magic-number
            ),
          ),
        ),
      );

  Widget _buildSubscriptionSection(BuildContext context, CurrentUser currentUser) =>
      GestureDetector(
        onTap: () {
          if (!currentUser.isPremium) {
            NoAccessPremiumInfo.presentBuyProducts(context,
                type: IAPType.subscription, profileBloc: context.read<ProfileBloc>());
          }
        },
        child: _buildSectionInfo(context,
            image: context.theme.profileSubscriptionImage,
            title: _subscriptionsEndDate(context, currentUser: currentUser),
            subtitle: currentUser.isPremium
                ? Str.of(context).myProfilSubscriptionAbonamentSubtitle
                : Str.of(context).myProfilSubscriptionFreeSubtitle),
      );

  String _subscriptionsEndDate(BuildContext context, {required CurrentUser currentUser}) => currentUser
              .isPremium &&
          currentUser.subscriptionEndsAt != null
      ? "${Str.of(context).myProfilSubscriptionDatePrefix} "
          "${DependenciesContainer().get<FormatterService>().date.format(currentUser.subscriptionEndsAt, inFormat: AppDateFormat.subscriptionEndDate)}"
      : Str.of(context).myProfilSubscriptionAbonamentTitle;

  Widget _buildSectionInfo(BuildContext context,
          {required ImageProvider image, required String title, required String subtitle}) =>
      MyProfilSectionCardView(
        child: Column(
          children: <Widget>[
            padded(
                Image(
                  image: image,
                  width: 71,
                  height: 65,
                ),
                top: 30),
            padded(
                AppText(
                  title,
                  type: AppTextType.body2,
                  color: context.theme.textDarkColor,
                  align: TextAlign.center,
                ),
                top: 15),
            padded(
                AppText(
                  subtitle,
                  type: AppTextType.body2Bold,
                  color: context.theme.textDarkColor,
                  align: TextAlign.center,
                ),
                top: 10,
                bottom: 20),
          ],
        ),
      );

  Widget _buildCreditsSection(BuildContext context, CurrentUser currentUser) => GestureDetector(
        onTap: () => NoAccessPremiumInfo.presentBuyProducts(context,
            type: IAPType.product, profileBloc: context.read<ProfileBloc>()),
        child: _buildSectionInfo(context,
            image: context.theme.profileCreditsImage,
            title: "${currentUser.credits} ${Str.of(context).myProfilCreditsNumber}",
            subtitle: Str.of(context).myProfilCreditsSubtitle.newLinesEscaped),
      );
}

class _ProfileMyTestCompatibilityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => launchUrl(context, Str.of(context).testCompatibilityUrl),
        child: MyProfilSectionCardView(
          showChevron: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
            child: Row(
              children: <Widget>[
                Image(
                  width: 50,
                  height: 50,
                  image: context.theme.profileTestCompatibilityImage,
                ),
                const SizedBox(width: 10),
                Text(
                  Str.of(context).myProfilTestCompatibility,
                  style: context.theme.textTheme.bodyText1?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: context.theme.textDarkColor),
                )
              ],
            ),
          ),
        ),
      );
}
