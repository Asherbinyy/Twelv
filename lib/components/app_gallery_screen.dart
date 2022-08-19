import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/model/file/image_dto.dart';

class AppGalleryScreen extends StatefulWidget {
  AppGalleryScreen({
    required this.galleryItems,
    this.loadingBuilder,
    this.customBackgroundColor,
    this.minScale,
    this.maxScale,
    this.initialIndex = 0,
    this.scrollDirection = Axis.horizontal,
  }) : pageController = PageController(initialPage: initialIndex);

  final LoadingBuilder? loadingBuilder;
  final Color? customBackgroundColor;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<ImageDto> galleryItems;
  final Axis scrollDirection;

  @override
  State<StatefulWidget> createState() {
    return _AppGalleryScreenState();
  }
}

class _AppGalleryScreenState extends State<AppGalleryScreen> {
  late int currentIndex;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.customBackgroundColor == null
            ? Colors.black.withOpacity(0.5)
            : widget.customBackgroundColor!,
      ),
      constraints: BoxConstraints.expand(
        height: MediaQuery.of(context).size.height,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: _buildItem,
            itemCount: widget.galleryItems.length,
            loadingBuilder: widget.loadingBuilder,
            backgroundDecoration: BoxDecoration(
              color: widget.customBackgroundColor == null
                  ? Colors.black.withOpacity(0.5)
                  : widget.customBackgroundColor!,
            ),
            pageController: widget.pageController,
            onPageChanged: onPageChanged,
            scrollDirection: widget.scrollDirection,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 45, left: 10),
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image(
                    width: 40,
                    height: 40,
                    image: context.theme.closeWhiteImage,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final ImageDto item = widget.galleryItems[index];
    final double maxZoom = 2;
    return PhotoViewGalleryPageOptions(
      imageProvider: Image.network(item.url).image,
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained,
      maxScale: PhotoViewComputedScale.covered * maxZoom,
      heroAttributes: PhotoViewHeroAttributes(tag: item.id),
    );
  }
}
