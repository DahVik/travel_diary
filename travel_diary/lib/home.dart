import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/AddPost.dart';
import 'package:travel_diary/CategoryScreen.dart';
import 'package:travel_diary/PostScreen.dart';
import 'package:travel_diary/ProfileScreen.dart';
import 'package:travel_diary/TripScreen.dart';
import 'package:travel_diary/constants.dart';
import 'package:travel_diary/controllers/homeController.dart';
import 'package:travel_diary/controllers/postController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PostController postController = Get.put(PostController());
  HomeController homeController = Get.put(HomeController());
  List myScreens = [
    CategoryScreen(),
    PostScreen(),
    TripScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: myScreens[homeController.chosenIndex.value],
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    homeController.chosenIndex.value = 0;
                  },
                  child: Icon(
                    Icons.home,
                    color: homeController.chosenIndex.value == 0
                        ? Colors.green
                        : Colors.grey,
                  )),
              GestureDetector(
                  onTap: () {
                    homeController.chosenIndex.value = 1;
                  },
                  child: Icon(
                    Icons.book,
                    color: homeController.chosenIndex.value == 1
                        ? Colors.green
                        : Colors.grey,
                  )),
              GestureDetector(
                onTap: () {
                  postController.selectedImages.value = [];
                  postController.imageSelected.value = false;
                  postController.selectedInterests.value = [];
                  Get.to(AddPost());
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.lightGreen,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    homeController.chosenIndex.value = 2;
                  },
                  child: Icon(
                    Icons.train,
                    color: homeController.chosenIndex.value == 2
                        ? Colors.green
                        : Colors.grey,
                  )),
              GestureDetector(
                onTap: () {
                  homeController.chosenIndex.value = 3;
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      defaultProfilePic,
                      height: 20,
                      width: 20,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
