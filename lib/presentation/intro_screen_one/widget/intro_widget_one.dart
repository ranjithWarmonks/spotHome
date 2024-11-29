import 'package:flutter/material.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class IntroWidgetOne extends StatelessWidget {
  const IntroWidgetOne({super.key});

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
              child:Image.asset(introScreenOne,fit: BoxFit.fill,), )),
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          height20,
          height10,

          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child:const CommonText(text: "Expert Services, Anytime, Anywhere",textSize: 25,fontWeight: FontWeight.bold,textAlign: TextAlign.center,)),

          Container(
              padding:const EdgeInsets.all(15),
              child:const CommonText(text: "From cleaning to repairs, find trusted professionals for all your home services with just a few taps. Convenience is now at your fingertips!",textAlign: TextAlign.center,))

        ],))

    ],);
  }
}


