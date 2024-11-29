import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/book_service/get/book_service_controller.dart';
import 'package:service/presentation/book_service/widget/bottom_sheet_apply_now.dart';
import 'package:service/presentation/book_service/widget/session_widget.dart';
import 'package:service/presentation/book_service/widget/week_widget.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_app_bar.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';
import 'package:service/widget/common_textField.dart';

class BookServiceScreen extends GetWidget<BookServiceController>{
  const BookServiceScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: const CommonAppBar(text: "Book the service"),
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      const CommonText(text: "Choose service timing?",fontWeight: FontWeight.w600,textSize: 16,),

      height15,

     Obx(()=> Row(children: [

        Expanded(child:GestureDetector(
            onTap: (){
              controller.isEarliest.value=true;

            },
            child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: !controller.isEarliest.value ?AppColors.lightWhite:AppColors.primaryColor,
        borderRadius:const BorderRadius.all(Radius.circular(5))
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(runningIcon,height: 24,width: 24,),
          width5,
        const CommonText(text: "At the earliest",textSize: 16,)
        ],)) )),
        width20,
        Expanded(child:GestureDetector(
            onTap: (){
              controller.isEarliest.value=false;
            },
            child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color:controller.isEarliest.value ?AppColors.lightWhite:AppColors.primaryColor,
                borderRadius:const BorderRadius.all(Radius.circular(5))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(calenderIcon,height: 24,width: 24,),
              width5,
              const CommonText(text: "Schedule later",textSize: 16,)
            ],))) ),
      ],)),
        height20,
        const CommonText(text: "Choose the date you want",fontWeight: FontWeight.w600,textSize: 16,),
        height15,
       Obx(()=>Container(
           height: MediaQuery.of(context).size.height *.08,
           child: ListView.builder(
           itemCount: controller.weekDates.length,
           padding: EdgeInsets.zero,
           scrollDirection: Axis.horizontal,
           itemBuilder: (context,index){
         return WeekWidget(
             onPressed: (){
               controller.selectedWeek(controller.weekDates[index].id);
             },
             dateTime: controller.weekDates[index]);
        }))),
        height20,

        const CommonText(text: "When should the professional arrive?",fontWeight: FontWeight.w600,textSize: 16,),
        height15,
        Obx(()=>Row(children: [
          Expanded(child:SessionWidget(onPressed: (){
            controller.sessionSelected(controller.sessionList[0].id);
          },bottomCustomModel: controller.sessionList[0])),
          width10,
          Expanded(
              child: SessionWidget(onPressed: (){
                controller.sessionSelected(controller.sessionList[1].id);
              },bottomCustomModel: controller.sessionList[1])),
          width10,
          Expanded(child: SessionWidget(onPressed: (){
            controller.sessionSelected(controller.sessionList[2].id);
          },bottomCustomModel: controller.sessionList[2])),

        ],)),
        height20,

        const CommonText(text: "Do you have any particular requirement?",fontWeight: FontWeight.w600,textSize: 16,),
        height15,
        CommonTextField(hintText: "Write your preferences.....", textEditingController: controller.textEditingController,miniLines:4,height: 100,width: MediaQuery.of(context).size.width,),
        height15,
        const CommonText(text: "Share your address",fontWeight: FontWeight.w600,textSize: 16,),
        height15,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Obx(()=>Checkbox(
              hoverColor: Colors.black,
              activeColor:  AppColors.primaryColor,
              fillColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.black.withOpacity(0.7); // Hover color
                } else if (states.contains(MaterialState.selected)) {
                  return AppColors.primaryColor; // Active (checked) color
                }
                return Colors.white; // Default color
              }),
              checkColor:  Colors.black,
              value: controller.shareAddress.value, onChanged: (value){

                controller.shareAddress.value=value!;
          })),
          width5,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            
            CommonText(
              text: "Office",textSize: 14,fontWeight: FontWeight.w600,),
            height5,

            Container(
                width: MediaQuery.of(context).size.width*.7,
                child: CommonText(text: "3rd Floor, SSS Plaza, Mahatma Nagar, Kizhakkumpattukara, Thrissur, Kerala 680005",textSize: 14,fontWeight: FontWeight.w400,maxLines: 5,)),
            
          ],)
          
          
        ],),
        height15,
        CommonButton(borderColor:Colors.black ,bgColor: Colors.black,text: "Choose your location", textColor: Colors.white,onPress: (){},width: MediaQuery.of(context).size.width,),
        height20,
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColors.creamColor,
            borderRadius: const BorderRadius.all(Radius.circular(5))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            CommonText(text: "Services bill",fontWeight: FontWeight.w600,textSize: 16,),
            height10,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Expanded(
               flex: 3,
                 child:CommonText(text: "Wooden door - repair / assembly (Inspection charges)",)),
              Expanded(
                  flex: 1,
                  child:CommonText(text: "₹49.00",textAlign: TextAlign.end,)),
            ],),
              height10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 3,
                      child:CommonText(text: "Access fees",)),
                  Expanded(
                      flex: 1,
                      child:CommonText(text: "₹49.00",textAlign: TextAlign.end,)),
                ],),
              height10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(text: "Have a coupon?",),
                  width10,
                  GestureDetector(
                      onTap: (){
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                            ),
                            builder: (BuildContext context) {
                              return  BottomSheetApplyNow(textEditingController: controller.textEditingController);

                            });
                      },
                      child:  Text("Add Now",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,decoration: TextDecoration.underline),))
                ],),
        ],) ,)
    ],
    ),
    ),
    bottomNavigationBar:Container(
        padding: const EdgeInsets.all(15),
        child:  CommonButton(text: "Book service for ₹108.00", onPress: (){
          Get.toNamed(Routes.cartScreen);
      
    })),
  );
  }
}