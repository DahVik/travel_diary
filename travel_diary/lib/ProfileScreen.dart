import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/constants.dart';
import 'package:travel_diary/showPost.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      defaultProfilePic,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vikrant Dahiya",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: 5,),
                    Text("Email Id",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    SizedBox(height: 5,),        
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              insta,
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            )),
                            SizedBox(width: 5,),
                        Text("Vikrant11048",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                "Hi I am Vikrant and i love to travel and explore new places ... here are some of my trips glimpses..",
                style: TextStyle(color: Colors.white),
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: double.maxFinite,
              color: Colors.white,
            ),
            SizedBox(height: 5,),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return postCard();
                  }),
            )
          ],
        ),
      ),
    ));
  }

  Widget postCard() {
    return Container(
      height: 200,
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 197, 180, 180)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(ShowPost());
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Image.asset(
                logo,
                height: 200,
                width: Get.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dzukou"),
              Text("Nagaland"),
              Text("Amount"),
              Container(
                height: 100,
                width: Get.width * 0.5 - 60,
                child: Text(
                  "descriptionkjkjdnkajsdnkndkjsndkjsndksndksndkssfnksnfsfnksnfksfnksjfnkjsnfksnfksnfk",
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                height: 2,
                width: Get.width * 0.5 - 60,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile Name",
                    overflow: TextOverflow.ellipsis,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
