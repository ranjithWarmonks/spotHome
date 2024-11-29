import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/intro_screen_one/get/intro_screen_one_controller.dart';
import 'package:service/presentation/intro_screen_one/widget/intro_widget_one.dart';
import 'package:service/presentation/intro_screen_one/widget/intro_widget_two.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class IntroScreenOne extends GetWidget<IntroScreenOneController>{
  const IntroScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(children: [
      Expanded(child: PageView.builder(
          controller: controller.pageController,
          itemCount: 2,
          itemBuilder: (__,index){
            return index==0 ? const IntroWidgetOne():const IntroWidgetTwo();
          })),
      Container(
          height: 20,
          padding: const EdgeInsets.only(bottom: 20),
          child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 2,
        effect: CustomizableEffect(
            activeDotDecoration: DotDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(50),
              width: 16,
              height: 16,
            ),
            dotDecoration:  DotDecoration(
              color: AppColors.lightWhite,
              dotBorder: DotBorder(width: 1,color:  AppColors.lightWhite),
              borderRadius: BorderRadius.circular(50),
              width: 16,
              height: 16,
            )
        ),
      )),
    ]),
      bottomNavigationBar:Padding(padding: const EdgeInsets.all(15),child:CommonButton(text: "Get start", onPress: (){
        Get.offAllNamed(Routes.loginScreen);

      })) ,
    );
  }
}