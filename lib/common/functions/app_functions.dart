import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

import '../../injection.dart';

Future<File?> getImage() async {
  final image = await getIt<ImagePicker>().pickImage(
    source: ImageSource.gallery,
  );

  if (image != null) {
    var result = File(image.path);

    debugPrint(
      'SIZE IMAGE BEFORE : ${result.readAsBytesSync().lengthInBytes / 1024} KB',
    );

    result = await compressPhoto(result);

    debugPrint(
      'SIZE IMAGE AFTER : ${result.readAsBytesSync().lengthInBytes / 1024} KB',
    );

    return result;
  }

  return null;
}

Future<File> compressPhoto(File file) async {
  final filePath = file.absolute.path;

  // Create output file path
  // eg:- "Volume/VM/abcd_out.jpeg"
  final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  final splitted = filePath.substring(0, (lastIndex));
  final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
  var result = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    outPath,
    quality: 50,
    rotate: 0,
    autoCorrectionAngle: true,
    keepExif: false,
  );

  return result!;
}
