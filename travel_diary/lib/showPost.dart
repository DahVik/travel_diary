import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/constants.dart';
import 'package:travel_diary/controllers/showController.dart';

class ShowPost extends StatelessWidget {
  ShowController showController = Get.put(ShowController());
  ShowPost({super.key});
  void _onHorizontalDragEnd(DragEndDetails details) {
    if (details.velocity.pixelsPerSecond.dx > 0) {
      // Right swipe detected
      // Perform your action here, for example, change the chosenIndex
      if (showController.chosenIndex.value > 0) {
        showController.chosenIndex.value--;
      }
    } else {
      if (showController.chosenIndex.value < showController.imageList.length) {
        showController.chosenIndex.value++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.grey,
        height: Get.height,
        child: Column(
          children: [
            Obx(() {
              return GestureDetector(
                onHorizontalDragEnd: _onHorizontalDragEnd,
                child: Container(
                  // child: Image.file(showController
                  //     .imageList[showController.chosenIndex.value]!),
                  child: Image.asset(
                    showController.list[showController.chosenIndex.value],
                    height: 400,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 20, left: 20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dzukou Valley",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "Nagaland",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "6000",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "Wonderful experince had a lot of fun events and love it alll.....",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
