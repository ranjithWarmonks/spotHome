import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/my_booking/get/my_booking_controller.dart';
import 'package:service/presentation/my_booking/widget/completed_widget.dart';
import 'package:service/presentation/my_booking/widget/draft_widget.dart';
import 'package:service/presentation/my_booking/widget/in_progress_widget.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/widget/common_app_bar.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class MyBookingScreen extends StatelessWidget{
   MyBookingScreen({super.key}){
     Get.lazyPut<MyBookingController>(() => MyBookingController());
   }
   final MyBookingController myBookingController = Get.find<MyBookingController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CommonAppBar(text: "My bookings",showBack: false,),
      body:Container(
          padding: const EdgeInsets.all(10),
          child:  Column(children: [
        
        Container(
          height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius:const BorderRadius.all(Radius.circular(10))
            ),
            child:Obx(()=>Row(children: [
              Expanded(child:GestureDetector(
                  onTap: (){
                    myBookingController.selected.value=1;
                  },
                  child:CommonText(text: "Draft",fontWeight: myBookingController.selected.value==1?FontWeight.w600:FontWeight.w400,)) ),
              Expanded(child:GestureDetector(
                  onTap: (){
                    myBookingController.selected.value=2;
                  },
                  child:CommonText(text: "Inprogress",fontWeight: myBookingController.selected.value==2?FontWeight.w600:FontWeight.w400,textAlign: TextAlign.center)) ),
              Expanded(child:GestureDetector(
                  onTap: (){
                    myBookingController.selected.value=3;
                  },
                  child:CommonText(text: "Completed",fontWeight:myBookingController.selected.value==3?FontWeight.w600:FontWeight.w400,textAlign: TextAlign.end,)) ),
            ],))),
            height10,
            Expanded(child: ListView.builder(
                itemBuilder: (BuildContext context,int index){
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.creamColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Obx(()=>myBookingController.selected.value==1?  DraftWidget(
                  onPressed: (){

                  },
                ):myBookingController.selected.value==2 ?const InProgressWidget():CompletedWidget(),));

            }))
        
      ],)),

    );
  }
  
}