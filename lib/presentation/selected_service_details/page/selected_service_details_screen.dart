import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/selected_service_details/get/selected_service_details_controller.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_app_bar.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class SelectedServiceDetailsScreen extends GetWidget<SelectedServiceDetailsController>{
  const SelectedServiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CommonAppBar(text: "Wooden door - repair / assembly"),

      body: SingleChildScrollView(
        padding:const EdgeInsets.all(15),
        child: Column(children: [
          Container(

            width: MediaQuery.of(context).size.width,
            height: 170,
            decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child:Image.asset(serviceHead,fit: BoxFit.fill,),
          ),
          height20,
          Container(
            width: MediaQuery.of(context).size.width,
            padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius:const BorderRadius.all(Radius.circular(10))
            ),
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
            CommonText(text: "Wooden door - repair / assembly",textSize: 16,fontWeight: FontWeight.w600,),
              height5,
              CommonText(text: "(Inspection charges)",textSize: 16,fontWeight: FontWeight.w400,),
            ],),),
          height10,
          Container(
              alignment: Alignment.centerLeft,
              child: const CommonText(text: "Descriptions",fontWeight: FontWeight.w600,textSize: 16,textAlign: TextAlign.left,)),
          height10,

          const CommonText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",fontWeight: FontWeight.w400,textSize: 16,),
          height20,

      Container(
        alignment: Alignment.centerLeft,
        child:  const CommonText(text: "Faqs & Instructions",fontWeight: FontWeight.w600,textSize: 16,)),
          height20,

        Container(
              height: MediaQuery.of(context).size.height * .35,
              child:  ListView.builder(
            shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context,int index){
                return  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ExpansionTile(
                  tilePadding:const EdgeInsets.all(5),
                    trailing: Obx(()=>controller.expandChange.value ? Image.asset(expandMinus,height: 25,width: 25,): Image.asset(expandPlus,height: 25,width: 25,)),
                    onExpansionChanged: (value){
                      controller.expandChange.value=value;

                    },
                    title: const CommonText(text: "Can I reschedule or cancel my booking?",textSize: 14,),
                    collapsedBackgroundColor: AppColors.lightWhite,
                    backgroundColor: AppColors.primaryColor,
                    children: <Widget>[
                      Container(
                          padding:const EdgeInsets.all(10),
                          color: Colors.white,
                          child:const CommonText(text: "Simply select a service category, choose your preferred service, and click on Book Now. Follow the prompts to complete your booking.",textSize: 14,))
                    ]
                ));

          })),


        ],),
        
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          child: CommonButton(
          text: "Select service", onPress: (){
            Get.toNamed(Routes.bookServiceScreen);

          })),
    );
  }
}