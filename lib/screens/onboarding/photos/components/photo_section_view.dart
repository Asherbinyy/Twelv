import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:twelv/common/components/dialog/options_dialog_view.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/file/image_dto.dart';
import 'package:twelv/screens/onboarding/photos/components/photo_item_view.dart';

class PhotoSectionView extends StatelessWidget {
  final List<File> files;
  final List<ImageDto> photos;
  final ValueChanged<int> onDelete;
  final ValueChanged<File> onAdd;
  final bool allowRemoveAll;

  const PhotoSectionView(
      {required this.onDelete,
      required this.onAdd,
      this.files = const <File>[],
      this.photos = const <ImageDto>[],
      this.allowRemoveAll = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double margin = 10;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildItem(context, 0),
            _buildItem(context, 1),
            _buildItem(context, 2),
          ],
        ),
        const SizedBox(
          height: margin,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildItem(context, 3),
            _buildItem(context, 4),
            _buildItem(context, 5),
          ],
        ),
      ],
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    if (files.length > index) {
      return PhotoItemView.image(
        index: index,
        fileImage: FileImage(files[index]),
        callback: (int index, PhotoItemAction action) {
          _photoAction(context, index, action);
        },
      );
    } else if (photos.length > index) {
      return PhotoItemView.photo(
        index: index,
        imageDto: photos[index],
        allowDelete: allowRemoveAll || photos.length > 1,
        callback: (int index, PhotoItemAction action) {
          _photoAction(context, index, action);
        },
      );
    } else {
      return PhotoItemView.add(
        index: index,
        isEnabled: index == 0 || files.isNotEmpty || photos.isNotEmpty,
        callback: (int index, PhotoItemAction action) {
          _photoAction(context, index, action);
        },
      );
    }
  }

  // region Action

  void _photoAction(BuildContext context, int index, PhotoItemAction action) {
    switch (action) {
      case PhotoItemAction.add:
        showDialogImageSource(context);
        break;
      case PhotoItemAction.delete:
        onDelete(index);
        break;
    }
  }

  // endregion

  // region Pick Image

  Future<void> pickImage(BuildContext context, ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? pickedFile = await picker.pickImage(source: source);
      if (pickedFile == null) {
        return;
      }

      final File file = File(pickedFile.path);
      onAdd(file);
    } catch (e) {
      switch (source) {
        case ImageSource.camera:
          final bool granted = await Permission.camera.isGranted;
          if (!granted) {
            AppSettings.openAppSettings();
          }
          break;
        case ImageSource.gallery:
          final bool granted = await Permission.photos.isGranted;
          if (!granted) {
            AppSettings.openAppSettings();
          }
          break;
      }
    }
  }

  void showDialogImageSource(BuildContext context) {
    final List<ActionDialogData> actions = <ActionDialogData>[
      ActionDialogData(Str.of(context).imagePickerSelectSourceGalleryName,
          () => pickImage(context, ImageSource.gallery)),
      ActionDialogData(Str.of(context).imagePickerSelectSourceCameraName,
          () => pickImage(context, ImageSource.camera)),
    ];

    showOptionsDialog(context, Str.of(context).imagePickerSelectSourceDialogTitle,
        Str.of(context).imagePickerSelectSourceDialogMessage, actions);
  }

  // endregion
}
