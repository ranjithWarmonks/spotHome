import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/register/get/register_controller.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';
import 'package:service/widget/common_textField.dart';

class RegisterScreen extends GetWidget<RegisterController>{
  const RegisterScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
        Expanded(child: Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(registerBG,fit: BoxFit.fill,),)),
        Expanded(child: SingleChildScrollView(
          padding:const EdgeInsets.symmetric(horizontal: 15),
          child:Column(children: [

            const CommonText(text: "Create Your Account",textSize: 18,fontWeight: FontWeight.w600,),
            height5,
            const CommonText(text: "Sign up to explore trusted services tailored to your needs."),
            height10,
            CommonTextField(
                width: MediaQuery.of(context).size.width,
                hasBorder: true,
                borderColor: AppColors.borderWhite,
                hintText: "Full name", textEditingController: controller.fullNameTxt),
            height10,
            CommonTextField(
                width: MediaQuery.of(context).size.width,
                hasBorder: true,
                borderColor: AppColors.borderWhite,
                hintText: "Phone number", textEditingController: controller.phoneNumberTxt),
            height15,
            CommonTextField(
                width: MediaQuery.of(context).size.width,
                hasBorder: true,
                borderColor: AppColors.borderWhite,
                hintText: "Email address", textEditingController: controller.emailAddressTxt),
            height15,
            CommonTextField(
                width: MediaQuery.of(context).size.width,
                hasBorder: true,
                borderColor: AppColors.borderWhite,
                hintText: "Password", textEditingController: controller.passwordTxt),
            height10,
            Row(children: [
              Obx(()=>Checkbox(
                  activeColor: AppColors.primaryColor,
                  value: controller.rememberPassword.value, onChanged: (value){

                controller.rememberPassword.value=value!;
              })),
              const Expanded(child: CommonText(text: "By signing up, you agree to our Terms of Service and Privacy Policy.",textSize: 12),),




             // Expanded(child: CommonText(text: "Forgot password?",textSize: 12,textAlign: TextAlign.end,))

            ],),
            height10,

            CommonButton(
                width: MediaQuery.of(context).size.width,
                text: "Create Account", onPress: (){
                  Get.offAllNamed(Routes.otpScreen);
            }),
            height10,
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CommonText(text: "Already have an account?",textSize: 14,),
                width5,
                GestureDetector(onTap: (){
                  Get.back();
                },child:  const Text("Log In",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,decoration: TextDecoration.underline),))
              ],),
            height20,
            height20,


          ],))),
      ],),)
    );
  }
}