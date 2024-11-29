import 'package:flutter/material.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class IntroWidgetTwo extends StatelessWidget {
  const IntroWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          flex: 2,
          child:Container(
            width: MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius:const BorderRadius.only(bottomRight: Radius.circular(400),)
            ),
            child:Image.asset(introScreenTwo,fit: BoxFit.fill,), )),
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          height20,
          height10,

          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child:const CommonText(text: "Save More with Special Deals and offers",textSize: 25,fontWeight: FontWeight.bold,textAlign: TextAlign.center,)),
          Container(
              padding:const EdgeInsets.all(15),
              child:const CommonText(text: "Enjoy great savings on every booking with exciting discounts and promo codes tailored just for you. Quality service doesn’t have to break the bank!",textAlign: TextAlign.center,))

        ],))

    ],);
  }
}
