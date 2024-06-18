import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/constants.dart';
import 'package:travel_diary/controllers/postController.dart';
import 'package:travel_diary/styles.dart';

class CreateButton extends StatelessWidget {
  PostController postController = Get.put(PostController());
  CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 42, right: 42, top: 20, bottom: 21),
      decoration: BoxDecoration(
          color: highlightColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          RichText(
              text: TextSpan(
                  text: "I accept ",
                  style: disableColorShade12RegularTextStyle,
                  children: [
                TextSpan(
                  text: "communityGuidelines",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ])),
          Padding(padding: EdgeInsets.only(top: 11)),
          Obx(() {
            return GestureDetector(
                onTap: () {
                  // postController.createTribeData();
                },
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: (postController.selectedImages.length == 0 ||
                              postController.location.value.trim() == "" ||
                              postController.state.value.trim() == "" ||
                              postController.amount.value == -1 ||
                              postController.experience.value.trim() == "" ||
                              postController.selectedInterests.length == 0)
                          ? disableColorShade
                          : Colors.green),
                  child: Center(
                    child: Text(
                      "Create Post",
                      style: (postController.selectedImages.length == 0 ||
                              postController.location.value.trim() == "" ||
                              postController.state.value.trim() == "" ||
                              postController.amount.value == -1 ||
                              postController.experience.value.trim() == "" ||
                              postController.selectedInterests.length == 0)
                          ? heading16SemiBoldTextStyle
                          : highlight16RegularTextStyle,
                    ),
                  ),
                ));
          })
        ],
      ),
    );
  }
}
