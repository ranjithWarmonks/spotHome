import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/my_profile/get/my_profile_controller.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';
import 'package:service/widget/common_textField.dart';

class MyProfileScreen extends GetWidget<MyProfileController>{
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(
                  backIcon,
                  height: 40,
                  width: 40,
                )),
            Expanded(
                child:Container(
                    alignment: Alignment.centerRight,
                    child:const CommonText(
                      text: "My profile",
                      textAlign: TextAlign.right,
                    ))),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(child: Image.asset(profileImage)),
              ),
            ),

          ],
        ),
      ),
      body:SingleChildScrollView(
        padding:const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

        const CommonText(text: "Personal details",textSize: 16,fontWeight: FontWeight.w600,),
            height15,
          CommonTextField(  width: MediaQuery.of(context).size.width,
          hintText: "Amelia Clark", textEditingController: controller.textEditingController),
          height10,

          Row(children: [
            Expanded(
              child: CommonTextField(
                  width: MediaQuery.of(context).size.width,
                  hintText: "Female", textEditingController: controller.textEditingController),),
            width15,
            Expanded(child: CommonTextField(hintText: "0/09/1998", textEditingController: controller.textEditingController)),

          ]),
            height15,
          const CommonText(text: "Contact details",textSize: 16,fontWeight: FontWeight.w600,),
            height15,
          CommonTextField(
              width: MediaQuery.of(context).size.width,
              hintText: "+91 9898 9898 98", textEditingController: controller.textEditingController),
            height10,
          CommonTextField(
              width: MediaQuery.of(context).size.width,
              hintText: "user@gmail.com", textEditingController: controller.textEditingController),
            height15,
          const CommonText(text: "Change password",textSize: 16,fontWeight: FontWeight.w600,),
            height15,
          CommonTextField(
              width: MediaQuery.of(context).size.width,
              hintText: "Type your current password", textEditingController: controller.textEditingController),
            height10,
          CommonTextField(
              width: MediaQuery.of(context).size.width,
              hintText: "Type your new password", textEditingController: controller.textEditingController),
            height10,
          CommonTextField(
              width: MediaQuery.of(context).size.width,
              hintText: "Confirm your password", textEditingController: controller.textEditingController),

        ],),) ,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        child: CommonButton(
          width: MediaQuery.of(context).size.width,
            text: "Select this location", onPress: (){}),),
      
    );
  }
}