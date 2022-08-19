import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/profile.dart';
import 'package:twelv/screens/likes/components/like_list_element_view.dart';

class LikesListView extends StatelessWidget {
  final List<Profile> profiles;
  final ValueChanged<Profile>? onSelectedProfile;

  const LikesListView({required this.profiles, Key? key, this.onSelectedProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.primaryColor,
        appBar: AppBar(
            title: Text(
              Str.of(context).profilesListLikedMeNavigationTitle,
              style: context.theme.textTheme.headline2!
                  .copyWith(fontSize: 24), // ignore: no-magic-number
            ),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset(context.theme.backImage.assetName),
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                Str.of(context).profilesListLikedMeDescription,
                style: context.theme.textTheme.bodyText1!
                    .copyWith(color: context.theme.textDarkColor, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              _buildGrid(),
            ],
          ),
        ),
      );

  Widget _buildGrid() => Expanded(
          child: GridView.builder(
        itemCount: profiles.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 165 / 220,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () => onSelectedProfile?.call(profiles[index]),
            child: LikeListElementView.user(user: profiles[index])),
      ));
}
