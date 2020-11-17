import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

class Helper {

  static Future<String> takePhoto() async {
    String result;

    await ImagePicker().getImage(source: ImageSource.camera).then((file) {
      if (file != null) {
        result = encodeImage(file);
      }
    });

    return result;
  }

  static String encodeImage(PickedFile file) {
    final bytes = File(file.path).readAsBytesSync();
    return base64Encode(bytes);
  }

  static Uint8List decodeImage(String image) => Base64Decoder().convert(image);

}