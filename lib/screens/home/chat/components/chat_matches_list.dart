import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/image/circle_image_network_border.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/model/user/matched_profile.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/home/chat/bloc/chat_bloc.dart';
import 'package:twelv/screens/home/chat/bloc/chat_event.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_event.dart';
import 'package:twelv/services/navigation/navigation.dart';

class ChatMatchesList extends StatelessWidget {
  final List<MatchedProfile> _matches;
  final double _size = 60;
  final int _likesDummyItemCount = 1;

  ChatMatchesList(List<MatchedProfile> profiles, {Key? key})
      : _matches = profiles.where((MatchedProfile p) => p.avatar?.url.isNotEmpty == true).toList(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _size,
      width: double.infinity,
      child: ListView.builder(
          itemCount: _likesDummyItemCount + _matches.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () => _onItemTap(context, index),
                child: Padding(
                  // ignore: no-magic-number
                  padding: EdgeInsets.only(left: index == 0 ? 20 : 7.5, right: 7.5),
                  child: index == 0
                      ? Image.asset(context.theme.likesListItemImage.assetName)
                      : CircleImageNetworkBorder(
                          url: _matches[index - _likesDummyItemCount].avatar!.url,
                          radius: _size,
                          border: 0,
                          useCache: true,
                        ),
                ),
              )),
    );
  }

  void _onItemTap(BuildContext context, int index) {
    final bool isClickOnAdmirers = index == 0;
    if (isClickOnAdmirers) {
      navigator(NavigationService.home).navigateTo(HomeRoutes.likes);
      context.read<LikesBloc>().add(const LikesEvent.fetch());
    } else {
      context.read<ChatBloc>().add(ChatEvent.onProfileClicked(
          userId: _matches[index - _likesDummyItemCount].getStreamUUID!));
    }
  }
}
