import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:travel_diary/constants.dart';
import 'package:travel_diary/controllers/trip_controller.dart';

import 'styles.dart';

class AddTrip extends StatelessWidget {
  TripController tripController = Get.put(TripController());
  AddTrip({super.key});

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
          "Add Trip",
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
                    tripController.location.value = value;
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
                    tripController.state.value = value;
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
              "Expected Budget (in rupees)",
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
                    tripController.amount.value = value as int;
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
              "Max no of intake",
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
                    tripController.intake.value = value as int;
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
              "Date of Departure",
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
                    tripController.date.value = value;
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
              "No Of Days",
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
                    tripController.days.value = value as int;
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
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        width: double.maxFinite,
        padding: EdgeInsets.only(left: 42, right: 42, top: 20, bottom: 21),
        decoration: BoxDecoration(
          color: highlightColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Obx(() {
              bool isDisabled = tripController.location.value.isEmpty ||
                  tripController.state.value.isEmpty ||
                  tripController.amount.value == -1 ||
                  tripController.intake.value == -1 ||
                  tripController.date.value.isEmpty ||
                  tripController.days.value == -1;

              return GestureDetector(
                onTap: () {
                  if (!isDisabled) {
                    // postController.createTribeData();
                  }
                },
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: isDisabled ? disableColorShade : Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "Add Trip",
                      style: isDisabled
                          ? heading16SemiBoldTextStyle
                          : highlight16RegularTextStyle,
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    ));
  }
}
