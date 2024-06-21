import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_diary/category_chart.dart';
import 'package:travel_diary/constants.dart';
import 'package:travel_diary/controllers/postController.dart';
import 'package:travel_diary/createButton.dart';
import 'package:travel_diary/styles.dart';

class AddPost extends StatelessWidget {
  PostController postController = Get.put(PostController());
  AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
        title: Text(
          "Create Post",
          style: heading20SemiBoldTextStyle.copyWith(color: Colors.white),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Divider(
              color: hintColor,
              height: 1,
            )),
      ),
      backgroundColor: screenBackground,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Add Pictures (max 10)",
              style: subHeading14SemiBoldTextStyle,
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Obx(() {
              return postController.imageSelected.value
                  ? Container(
                      height: (Get.width - 40) * 9 / 16,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: postController.selectedImages.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width:
                                      postController.selectedImages.length == 1
                                          ? 300
                                          : 250,
                                  margin: EdgeInsets.only(right: 20),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.file(
                                      File(postController
                                          .selectedImages[index]!.path),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              })),
                    )
                  : Container(
                      height: (Get.width - 40) * 9 / 16,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: disableColor,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                postController.pickImages(ImageSource.gallery);
                              },
                              child: Image.asset(
                                createAdd,
                                height: 41,
                                width: 41,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Choose Pics",
                              style: subHeading14SemiBoldTextStyle,
                            )
                          ]),
                    );
            }),
            Text(
              "Location",
              style: subHeading14SemiBoldTextStyle,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 38,
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 10, bottom: 1, left: 18),
              decoration: BoxDecoration(
                  color: highlightColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextField(
                  style: subHeading16RegularTextStyle,
                  cursorColor: subHeadingColor,
                  onChanged: (value) {
                    postController.location.value = value;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    // hintText: "textFieldLabel",
                    hintStyle: hint14RegularTextStyle,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "State Visited",
              style: subHeading14SemiBoldTextStyle,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 38,
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 10, bottom: 1, left: 18),
              decoration: BoxDecoration(
                  color: highlightColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextField(
                  style: subHeading16RegularTextStyle,
                  cursorColor: subHeadingColor,
                  onChanged: (value) {
                    postController.state.value = value;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    // hintText: "textFieldLabel",
                    hintStyle: hint14RegularTextStyle,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Amount Spent (in rupees)",
              style: subHeading14SemiBoldTextStyle,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 38,
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 10, bottom: 1, left: 18),
              decoration: BoxDecoration(
                  color: highlightColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: subHeading16RegularTextStyle,
                  cursorColor: subHeadingColor,
                  onChanged: (value) {
                    postController.amount.value = value as int;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    // hintText: "textFieldLabel",
                    hintStyle: hint14RegularTextStyle,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Experience",
              style: subHeading14SemiBoldTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 89,
                width: double.maxFinite,
                padding:
                    EdgeInsets.only(top: 6, left: 18, right: 12, bottom: 12),
                decoration: BoxDecoration(
                    color: highlightColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextField(
                  scrollPadding: EdgeInsets.zero,
                  style: subHeading16RegularTextStyle,
                  cursorColor: subHeadingColor,
                  onChanged: (value) {
                    postController.experience.value = value;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "describe",
                      hintStyle: hint14RegularTextStyle,
                      counterStyle: hint14RegularTextStyle,
                      contentPadding: EdgeInsets.zero),
                  maxLength: 200,
                  maxLines: null,
                  minLines: 4,
                )),
            SizedBox(
              height: 15,
            ),
            Text(
              "Select Categories",
              style: subHeading14SemiBoldTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Obx(() => Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: postController.interests.map(
                    (interest) {
                      return InterestCard(
                        interest: interest,
                        backgroundColor:
                            postController.selectedInterests.contains(interest)
                                ? Colors.black
                                : highlightColor,
                        textColor:
                            postController.selectedInterests.contains(interest)
                                ? Colors.white
                                : disableColorShade,
                        borderColor:
                            postController.selectedInterests.contains(interest)
                                ? Colors.black
                                : disableColorShade,
                      );
                    },
                  ).toList(),
                )),
          ]),
        ),
      ),
      bottomNavigationBar: CreateButton(),
    ));
  }
}
