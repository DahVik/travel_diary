import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/controllers/postController.dart';
import 'package:travel_diary/styles.dart';

class InterestCard extends StatelessWidget {
  final String interest;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  InterestCard({
    super.key,
    required this.interest,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  });
  PostController postController = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostController>(builder: (_tribeController) {
      return GestureDetector(
        onTap: () => postController.toggleInterest(interest),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor,
            border: Border.all(color: borderColor),
          ),
          child: Text(
            interest,
            style: subHeading14SemiBoldTextStyle.copyWith(
                fontWeight: FontWeight.normal, color: textColor),
          ),
        ),
      );
    });
  }
}
