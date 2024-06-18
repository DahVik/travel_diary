import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/constants.dart';
import 'package:travel_diary/showPost.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Penned Journos",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return postCard();
            }),
      ),
    ));
  }

  Widget postCard() {
    return Container(
      height: 200,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
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
                width: Get.width*0.5-60,
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
