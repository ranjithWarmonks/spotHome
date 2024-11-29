import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/selected_service/get/selected_service_controller.dart';
import 'package:service/presentation/selected_service/widget/bottom_sheet_book_service.dart';
import 'package:service/presentation/selected_service/widget/cart_widget.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_app_bar.dart';

class SelectedServiceScreen extends GetWidget<SelectedServiceController>{
  const SelectedServiceScreen({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:const CommonAppBar(text: "Carpentry"),
      body: SingleChildScrollView(
        child:Column(children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 170,
            decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child:Image.asset(serviceHead,fit: BoxFit.fill,),
          ),

       ListView.builder(
         shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics:const  NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return  CartWidget(
              onPressed: () {
    showModalBottomSheet(
    context: context,
    shape:const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (BuildContext context) {
    return const BottomSheetBookService();

    });
              },

            );
          },
          itemCount: 20,
        ),

        ],) ,),
    );
    
  }
  
}