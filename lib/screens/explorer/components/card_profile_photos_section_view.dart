import 'package:flutter/material.dart';
import 'package:twelv/common/components/image/image_network_with_loader.dart';
import 'package:twelv/components/app_gallery_screen.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/file/image_dto.dart';

class CardProfilePhotosSectionView extends StatelessWidget {
  final List<ImageDto> images;
  final bool allowFullscreen;

  const CardProfilePhotosSectionView({required this.images, Key? key, this.allowFullscreen = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  Str.of(context).profileCardPhotosHeaderTitle,
                  type: AppTextType.cardProfileSectionHeader,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 115,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  itemCount: images.length,
                  itemBuilder: (_, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (allowFullscreen) _openFullscreenImage(context, index);
                      },
                      child: AspectRatio(
                        aspectRatio: 1.3913,
                        child: Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Hero(
                              tag: images[index].id,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: ImageNetworkWithLoader(
                                  url: images[index].url,
                                ),
                              ),
                            )),
                      ),
                    );
                  }),
            ),
          ],
        ),
      );

  void _openFullscreenImage(BuildContext context, final int index) => showDialog(
        context: context,
        builder: (BuildContext buildContext) => AppGalleryScreen(
          galleryItems: images,
          initialIndex: index,
        ),
      );
}
