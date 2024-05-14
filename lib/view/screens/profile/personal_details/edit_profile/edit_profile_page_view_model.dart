import 'dart:io';

import 'package:applied_nurse/helpers/base_screen_view.dart';
import 'package:applied_nurse/helpers/base_view_model.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

final imageFileDataModel =
    ChangeNotifierProvider((ref) => ImageFileDataModel(ref: ref));

class ImageFileDataModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ImageFileDataModel({required this.ref}) : super();

  File? _imageFile;

//GETTER IMAGE FILES

  File? get imageFile => _imageFile;

//SETTER IMAGE FILES

  void imageFileData() async {
    await ImagePicker()
        .pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    )
        .then((value) {
      if (value != null) {
        _imageFile = File(value.path);
      }
    });
    notifyListeners();
  }
}
