import 'package:flutter/material.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class ExploreServiceWidget extends StatelessWidget {
  const ExploreServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        width: 140,
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 0),
        padding: const EdgeInsets.only(left: 7, bottom: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(width: 2, color: AppColors.primaryColor),
            image: const DecorationImage(
                image: AssetImage(serviceNear), fit: BoxFit.fill)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CommonText(
              text: "Painting",
              fontWeight: FontWeight.bold,
              textSize: 14,
              textColor: Colors.white,
            ),
            CommonText(
              text: "Wall Decor",
              fontWeight: FontWeight.w200,
              textSize: 14,
              textColor: Colors.white,
            ),
            height5
          ],
        ),
      ),
    );
  }
}
