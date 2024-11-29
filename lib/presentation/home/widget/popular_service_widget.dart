import 'package:flutter/material.dart';

import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';

import 'package:service/widget/common_text.dart';

class PopularServiceWidget extends StatelessWidget {
  const PopularServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 0),
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: const DecorationImage(
              image: AssetImage(popularService), fit: BoxFit.fill)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CommonText(
            text: "Deep home cleaning",
            fontWeight: FontWeight.w600,
            textSize: 14,
            textColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          width5,
          CommonButton(
            text: "Book now",
            onPress: () {},
            fontWeight: FontWeight.w400,
            height: 30,
            width: 90,
            textSize: 14,
          ),
        ],
      ),
    );
  }
}
