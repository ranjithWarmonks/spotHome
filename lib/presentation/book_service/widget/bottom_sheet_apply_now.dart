
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';
import 'package:service/widget/common_textField.dart';

class BottomSheetApplyNow extends StatelessWidget {
  final TextEditingController textEditingController;

  const BottomSheetApplyNow({super.key,required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(applyIcon,height: 40,width: 40,),
            height5,
            const CommonText(text: "Apply your coupon code",textSize: 18,fontWeight: FontWeight.w600),
            height10,
            Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: const CommonText(text: "The amount displayed as price is for inspection.The approximate repair cost can be determined after reviewing",textSize: 16,)),
            height20,
            CommonTextField(
                width: MediaQuery.of(context).size.width,
                hintText: "Have a coupon? Apply now", textEditingController: textEditingController),
            height20,
            CommonButton(
                width: MediaQuery.of(context).size.width,
                text: "Apply now", onPress: (){
              Get.back();
              //Get.toNamed(Routes.selectedServiceDetailsScreen);
            }),



          ],));
  }
}
