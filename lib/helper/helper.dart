import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Helper {
  final _picker = ImagePicker();

  Future<String> takePhoto() async {
    String result;

    await _picker.getImage(source: ImageSource.camera,
        imageQuality: 50).then((file) {
      if (file != null) {
        result = _encodeImage(file);
      }
    });

    return result;
  }

  String _encodeImage(PickedFile file) {
    final bytes = File(file.path).readAsBytesSync();
    return base64Encode(bytes);
  }

}