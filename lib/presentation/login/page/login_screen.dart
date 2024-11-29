import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/login/get/login_controller.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';
import 'package:service/widget/common_textField.dart';

class LoginScreen extends GetWidget<LoginController>{
  const LoginScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 2,
            child:SizedBox(width: MediaQuery.of(context).size.width,
           child: Image.asset(loginBG,fit: BoxFit.fill,),)),
        Expanded(child:SingleChildScrollView(
            padding:const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              
              Row(children: [
                const CommonText(text: "Welcome to",textSize: 18,),
                width10,
                CommonText(text: "Spot Home",textSize: 18,fontWeight: FontWeight.bold,textColor: AppColors.primaryColor,),
              ],),
height5,
          const CommonText(text: "Log in to access your account and enjoy hassle-free service booking."),

          height10,

          CommonTextField(
              width: MediaQuery.of(context).size.width,
              hasBorder: true,
              borderColor: AppColors.borderWhite,
              hintText: "Enter your phone number", textEditingController: controller.textEditingController),
              height5,
              Row(children: [
                Obx(()=>Checkbox(
                    activeColor: AppColors.primaryColor,
                    value: controller.rememberPassword.value, onChanged: (value){

                  controller.rememberPassword.value=value!;
                })),
                const CommonText(text: "Remember me",textSize: 12,),

                const Expanded(child: CommonText(text: "Forgot password?",textSize: 12,textAlign: TextAlign.end,))

              ],),
              height10,
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
                  const CommonText(text: "New to Spot Home?",textSize: 14,),
                  width5,
                  GestureDetector(onTap: (){
                    Get.toNamed(Routes.registerScreen);
                  },child: const Text("Create an Account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,decoration: TextDecoration.underline),))
                ],),
              height10,
        ],) )
        ),


        
        
        
        
      ],),
      
    );
  }
}