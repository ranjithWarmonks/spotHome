import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/service/get/service_controller.dart';
import 'package:service/presentation/service/widget/service_widget.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_app_bar.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_textField.dart';

class ServiceScreen extends GetWidget<ServiceController> {
    ServiceScreen({super.key});

final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CommonAppBar(
        showBack: false,
        text: "All Services",
      ),
      body:SingleChildScrollView(
        padding:const EdgeInsets.all(10),
        child: Column(children: [

        CommonTextField(
            width: MediaQuery.of(context).size.width * .90,
            hintText: "Search services......", textEditingController: textEditingController),

        height10,
      GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: List.generate(10, (index) {
    return  ServiceWidget(
      onPressed: (){
        Get.toNamed(Routes.serviceDetailsScreen);
      },
    );}))

      ],),),
    );


  }
}
