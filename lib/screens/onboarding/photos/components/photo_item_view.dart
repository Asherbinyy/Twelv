import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/image/image_network_with_loader.dart';
import 'package:twelv/model/file/image_dto.dart';

typedef PhotoCallback = void Function(int, PhotoItemAction);

enum PhotoItemAction { add, delete }

class PhotoItemView extends StatelessWidget {
  final int index;
  final bool isEnabled;
  final FileImage? fileImage;
  final ImageDto? imageDto;
  final PhotoCallback callback;
  final bool allowDelete;

  const PhotoItemView({
    required this.index,
    required this.isEnabled,
    required this.callback,
    this.fileImage,
    this.imageDto,
    this.allowDelete = true,
    Key? key,
  }) : super(key: key);

  factory PhotoItemView.add(
          {required int index, required bool isEnabled, required PhotoCallback callback}) =>
      PhotoItemView(
          key: ValueKey<String>("PhotoItemView.add.$index}"),
          index: index,
          isEnabled: isEnabled,
          callback: callback);

  factory PhotoItemView.image({
    required int index,
    required FileImage fileImage,
    required PhotoCallback callback,
  }) =>
      PhotoItemView(
          key: ValueKey<String>("PhotoItemView.image.$index}"),
          index: index,
          isEnabled: true,
          fileImage: fileImage,
          callback: callback);

  factory PhotoItemView.photo({
    required int index,
    required ImageDto imageDto,
    required PhotoCallback callback,
    required bool allowDelete,
  }) =>
      PhotoItemView(
          key: ValueKey<String>("PhotoItemView.image.$index}"),
          index: index,
          isEnabled: true,
          allowDelete: allowDelete,
          imageDto: imageDto,
          callback: callback);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 110 / 160,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 160, maxWidth: 110),
          child: Container(child: _buildContainer(context)),
        ),
      ),
    );
  }

  Widget _buildContainer(BuildContext context) => fileImage == null && isEnabled
      ? GestureDetector(
          onTap: () {
            callback(index, PhotoItemAction.add);
          },
          child: _buildBorder(context, _buildContent(context)),
        )
      : _buildBorder(context, _buildContent(context));

  Widget _buildBorder(BuildContext context, Widget content) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(5));

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 2.5),
        decoration: BoxDecoration(
            border: Border.all(color: context.theme.accentSecondaryLightColor),
            borderRadius: borderRadius),
        child: ClipRRect(borderRadius: borderRadius, child: content));
  }

  Widget _buildContent(BuildContext context) {
    if (fileImage == null && imageDto == null) {
      return Center(
        child: Image(
          height: 55,
          image: isEnabled ? context.theme.cameraAddImage : context.theme.cameraAddDisabledImage,
        ),
      );
    } else {
      return _buildImageContent(context);
    }
  }

  Widget _buildImageContent(BuildContext context) => Stack(
        children: <Widget>[
          _buildImageView(),
          if (allowDelete)
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  callback(index, PhotoItemAction.delete);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image(
                    width: 20,
                    height: 20,
                    image: context.theme.deleteImage,
                  ),
                ),
              ),
            ),
        ],
      );

  Widget _buildImageView() {
    if (fileImage != null) {
      return Image(
        image: fileImage!,
        width: double.infinity,
        height: double.infinity, // ignore: no-equal-arguments
        fit: BoxFit.cover,
      );
    } else if (imageDto != null) {
      return ImageNetworkWithLoader(
        url: imageDto!.url,
        width: double.infinity,
        height: double.infinity, // ignore: no-equal-arguments
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
