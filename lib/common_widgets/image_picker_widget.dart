// ignore_for_file: use_build_context_synchronously, use_super_parameters

import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import '../assets_helper/app_fonts.dart';

class ImageSourceDialog extends StatelessWidget {
  final ValueChanged<String> onImageSelected;

  const ImageSourceDialog({super.key, required this.onImageSelected});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text(
        'Choose Image Source',
        style: TextFontStyle
            .headline11c878A94Satoshiw500, // Your custom text style
      ),
      actions: [
        CupertinoActionSheetAction(
          child: const Text('Camera'),
          onPressed: () async {
            XFile? image =
                await ImagePicker().pickImage(source: ImageSource.camera);
            if (image != null) {
              onImageSelected(image.path);
              log('Image path: ${image.path}');
            } else {
              log('No image selected.');
            }
            Navigator.of(context).pop();
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Gallery'),
          onPressed: () async {
            XFile? image =
                await ImagePicker().pickImage(source: ImageSource.gallery);
            if (image != null) {
              onImageSelected(image.path);
              log('Image path: ${image.path}');
            } else {
              log('No image selected.');
            }
            Navigator.of(context).pop();
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        isDestructiveAction: true,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Cancel'),
      ),
    );
  }
}

class VideoSource extends StatelessWidget {
  final Function(String path, bool isVideo) onMediaSelected;

  const VideoSource({required this.onMediaSelected, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();

    return CupertinoActionSheet(
      title: const Text('Select Media'),
      actions: [
        CupertinoActionSheetAction(
          child: const Text('Pick Video'),
          onPressed: () async {
            final XFile? file =
                await picker.pickVideo(source: ImageSource.gallery);
            if (file != null) {
              Navigator.pop(context);
              onMediaSelected(file.path, true); // true = video
            }
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
