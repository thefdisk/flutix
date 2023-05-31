import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

import '../../injection.dart';

void dismissKeyboard(BuildContext context) {
  final currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

Future<XFile?> getImage() async {
  final image = await getIt<ImagePicker>().pickImage(
    source: ImageSource.gallery,
  );

  if (image != null) {
    var result = XFile(image.path);

    debugPrint(
      'SIZE IMAGE BEFORE : ${await result.length() / 1024} KB',
    );

    result = await compressPhoto(result);

    debugPrint(
      'SIZE IMAGE AFTER : ${await result.length() / 1024} KB',
    );

    return result;
  }

  return null;
}

Future<XFile> compressPhoto(XFile file) async {
  final filePath = file.path;

  // Create output file path
  // eg:- "Volume/VM/abcd_out.jpeg"
  final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  final splitted = filePath.substring(0, (lastIndex));
  final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
  var result = await FlutterImageCompress.compressAndGetFile(
    file.path,
    outPath,
    quality: 50,
    rotate: 0,
    autoCorrectionAngle: true,
    keepExif: false,
  );

  return result!;
}
