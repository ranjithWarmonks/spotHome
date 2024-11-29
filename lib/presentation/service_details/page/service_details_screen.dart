import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/service_details/widget/service_details_widget.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_app_bar.dart';

class ServiceDetailsScreen extends StatefulWidget {
  const ServiceDetailsScreen({super.key});

  @override
  State<ServiceDetailsScreen> createState() => _ServiceDetailsScreenState();
}

class _ServiceDetailsScreenState extends State<ServiceDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(text: "Carpentry"),
      body: SingleChildScrollView(

        child:Column(children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 170,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child:Image.asset(service,fit: BoxFit.fill,),


          ),
          GridView.count(

              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: List.generate(10, (index) {
                return  ServiceDetailsWidget(
                  onPressed: (){
                    Get.toNamed(Routes.selectedServiceScreen);
                  },

                );}))
        ],),),
      
    );
  }
}
