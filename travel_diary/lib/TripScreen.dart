import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/add_trip.dart';

import 'constants.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        maintainBottomViewPadding: true,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              "Journos To be Penned",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          body: Stack(children: [
            Container(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return tripCard();
                  }),
            ),
            Positioned(
                bottom: 40,
                right: 40,
                child: GestureDetector(
                  onTap: () {
                    Get.to(AddTrip());
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(28)),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ))
          ]),
        ));
  }

  Widget tripCard() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 187, 212, 122)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  defaultProfilePic,
                  height: 30,
                  width: 30,
                )),
            SizedBox(
              width: 5,
            ),
            Text(
              "Vikrant Dahiya",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ]),
          Text("Location Name: Dzukou"),
          Text("State : Nagaland"),
          Text("Estimated Budget : 10000"),
          Text("Date of Departure : "),
          Text("Estimated days :"),
          Text("Maximum intake :"),
        ],
      ),
    );
  }
}
