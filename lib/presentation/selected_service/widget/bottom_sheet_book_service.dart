import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class BottomSheetBookService extends StatelessWidget {
  const BottomSheetBookService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: const EdgeInsets.all(20),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(disclaimer,height: 40,width: 40,),
        height5,
        CommonText(text: "Disclaimer",textSize: 18,fontWeight: FontWeight.w600,textColor: AppColors.redColor,),
        height10,
        Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: const CommonText(text: "The amount displayed as price is for inspection.The approximate repair cost can be determined after reviewing",textSize: 16,textAlign: TextAlign.center,)),
        height20,
        CommonButton(
            width: MediaQuery.of(context).size.width,
            text: "Continue", onPress: (){
        Get.back();
              Get.toNamed(Routes.selectedServiceDetailsScreen);
        })


    ],));
  }
}
