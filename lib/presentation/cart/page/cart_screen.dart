import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/cart/get/cart_controller.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_app_bar.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';
import 'package:service/widget/common_textField.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(text: "cart"),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              itemCount: 1, // Example with multiple items
              physics: const NeverScrollableScrollPhysics(), // Disable ListView scrolling
              shrinkWrap: true, // Let ListView adapt to its content size
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 10), // Space between items
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.creamColor, // Replace with AppColors.creamColor
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(text: "Wooden door - repair / assembly (Inspection charges)",fontWeight: FontWeight.w600,),
                            height5,
                            CommonText(text: "12-01-2024, Sun 06 PM - 07 PM",textSize: 12,),
                            height5,
                            CommonText(text: "₹108.00",textSize: 20,fontWeight: FontWeight.w600,),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(editIcon,height: 30,width: 30,), // Replace with Image.asset
                            height10,
                            Image.asset(deleteIcon,height: 30,width: 30,), // Replace with Image.asset
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            height20,

            Container(
              width: MediaQuery.of(context).size.width,
              padding:const EdgeInsets.all(15),
              decoration:  BoxDecoration(
                color:AppColors.lightWhite,
                borderRadius:const BorderRadius.all(Radius.circular(10))
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                CommonText(text: "Billing address",textSize: 16,fontWeight: FontWeight.w600,),
                  height10,
                  Row(children: [Obx(()=>Checkbox(
                      hoverColor: Colors.black,
                      activeColor:  AppColors.primaryColor,
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.black.withOpacity(0.7); // Hover color
                        } else if (states.contains(MaterialState.selected)) {
                          return Colors.black; // Active (checked) color
                        }
                        return AppColors.primaryColor; // Default color
                      }),
                      checkColor:  Colors.black,
                      value: controller.saneAsService.value, onChanged: (value){
                    controller.saneAsService.value=value!;
                   controller.otherAddress.value=false;
                  })),

                    const CommonText(text: "Same as service address")
                    ]),
                  Row(children: [Obx(()=>Checkbox(
                      hoverColor: Colors.black,
                      activeColor:  AppColors.primaryColor,
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.black.withOpacity(0.7); // Hover color
                        } else if (states.contains(MaterialState.selected)) {
                          return Colors.black; // Active (checked) color
                        }
                        return AppColors.primaryColor; // Default color
                      }),
                      checkColor:  Colors.black,
                      value: controller.otherAddress.value, onChanged: (value){
                    controller.saneAsService.value=false;
                    controller.otherAddress.value=value!;
                  })),

                    const CommonText(text: "Other Address")
                  ]),
                  
                  CommonTextField(
                    width: MediaQuery.of(context).size.width,
                    hintText: "Specify address", textEditingController: controller.textEditingController,height: 100,miniLines: 4,)

              ],) ,)

          ],
        ),

      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        child: Row(children: [

        Expanded(child:CommonText(text: "Book other services",fontWeight: FontWeight.w600,) ),
        width10,
        Expanded(child:CommonButton(
            width: MediaQuery.of(context).size.width,

            isACtive: true,
            text: "Proceed to checkout", onPress: (){}) ),

      ],),) ,
    );
  }
}
