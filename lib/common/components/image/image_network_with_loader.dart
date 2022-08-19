import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:twelv/di/app_module.dart';

class ImageNetworkWithLoader extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final bool resizeProgress;

  const ImageNetworkWithLoader(
      {required this.url, this.width, this.height, this.resizeProgress = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        key: ValueKey<String>(url),
        cacheKey: url,
        imageUrl: url, //ignore: no-equal-arguments
        fit: BoxFit.cover,
        width: width,
        height: height,
        errorWidget: (BuildContext context, String url, dynamic error) {
          logger().e('Error when loading cached image $url', error);
          return _buildErrorContainer();
        },
        progressIndicatorBuilder:
            (BuildContext context, String url, DownloadProgress downloadProgress) => resizeProgress
                ? SizedBox(
                    width: width,
                    height: height,
                    child: _buildProgressCachedIndicator(context, downloadProgress),
                  )
                : _buildProgressCachedIndicator(context, downloadProgress),
      );

  Widget _buildErrorContainer() => const Center(
        child: Icon(Icons.error),
      );

  Widget _buildProgressIndicator(BuildContext context, ImageChunkEvent loadingProgress) => Center(
        child: CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
              : null,
        ),
      );

  Widget _buildProgressCachedIndicator(BuildContext context, DownloadProgress downloadProgress) =>
      Center(
        child: CircularProgressIndicator(
          value: downloadProgress.progress,
        ),
      );
}
