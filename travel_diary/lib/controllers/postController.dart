import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PostController extends GetxController {
  RxBool imageSelected = false.obs;
  RxList<File?> selectedImages = <File?>[].obs;
  RxString location = "".obs;
  RxString state = "".obs;
  RxInt amount = (-1).obs;
  RxString experience = "".obs;
  List<dynamic> interests = [
    "Mountains",
    "Beaches",
    "Hill Areas",
    "Island",
    "City",
    "Heritage Site"
  ];
  RxList<dynamic> selectedInterests = [].obs;
  void toggleInterest(String interest) {
    if (selectedInterests.contains(interest)) {
      selectedInterests.remove(interest);
    } else {
      if (selectedInterests.length == 2) return;
      selectedInterests.add(interest);
    }
  }

  void pickImages(ImageSource imageSource) async {
    ImagePicker imagePicker = ImagePicker();
    List<XFile?> pickedFiles = await imagePicker.pickMultiImage();
    if (pickedFiles != null) {
      for (int i = 0; i < pickedFiles.length; i++) {
        XFile file = pickedFiles[i]!;
        selectedImages.add(File(file.path));
      }
      imageSelected.value = true;
    }
  }
}
