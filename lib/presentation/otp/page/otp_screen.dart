import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:service/presentation/otp/get/otp_controller.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class OtpScreen extends GetWidget<OtpController>{
  const OtpScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.creamColor,
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

         const CommonText(text: "Verify Your Account",fontWeight: FontWeight.bold,textSize: 20,),
          height10,
          const CommonText(text: "Enter the 6-digit code sent to your email/phone to verify your account.",textAlign: TextAlign.center,),
          height20,
          height10,
          Pinput(
            length: 4,
              defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor), // Border color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  textStyle: TextStyle(color: AppColors.primaryColor)
              )
          ),

          height10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CommonText(text: "Didn’t receive the code?",textSize: 14,),
              width5,
              GestureDetector(onTap: (){
               // Get.toNamed(Routes.registerScreen);
              },child:const CommonText(text: "Resend OTP",textSize: 16,fontWeight: FontWeight.bold,))
            ],),
          height20,
          CommonButton(
              width: MediaQuery.of(context).size.width,
              text: "Login Now", onPress: (){
                Get.offAllNamed(Routes.bottomNavigation);
          }),
          height10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CommonText(text: "Wrong phone number?",textSize: 14,),
              width5,
              GestureDetector(onTap: (){
                // Get.toNamed(Routes.registerScreen);
              },child:const CommonText(text: "Edit Now",textSize: 16,fontWeight: FontWeight.bold,))
            ],),



        ],)),

    );
  }
}