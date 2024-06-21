import 'dart:io';

import 'package:get/get.dart';
import 'package:travel_diary/constants.dart';

class ShowController extends GetxController {
  RxList<File?> imageList = <File?>[].obs;
  List<String> list = [logo, beaches, mountain];
  RxInt chosenIndex = 0.obs;
  void addList() {
    imageList.add(File(logo));
    imageList.add(File(beaches));
    imageList.add(File(logo));
    imageList.add(File(logo));
    imageList.add(File(logo));
    imageList.add(File(logo));
    imageList.add(File(logo));
    imageList.add(File(logo));
    imageList.add(File(logo));
  }
}
