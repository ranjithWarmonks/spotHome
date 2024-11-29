import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:service/presentation/selected_service/widget/service_type_widget.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class CartWidget extends StatelessWidget {
 final VoidCallback onPressed;
  const CartWidget({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child:Container(
        margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 5),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.creamColor,
        borderRadius:const BorderRadius.all(Radius.circular(10))),
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset(service,width: 90,height: 100,fit: BoxFit.fill,)),
          width5,
          Expanded(child:
          Container(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
          const CommonText(text: "Ranjith A S",fontWeight: FontWeight.bold,textSize: 16,),
          height5,
          Row(children: [
            Container(
              padding:const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius:const BorderRadius.all(Radius.circular(5))
              ),
              child:const CommonText(text: "4.8 / 5.00",textSize: 12,) ,),
            width5,
            RatingStars(
              value: 5,
              starCount: 5,
              starSize: 12,
              valueLabelVisibility:false,
              starColor: AppColors.primaryColor,
            ),
            width5,
            const CommonText(text: "150 Reviews",textSize: 12,),
          ],),
                    const ServiceTypeWidget()
          ])))
]),
            Divider(thickness: 0.2,color: AppColors.primaryColor,),
            height5,

            Row(children: [

              Expanded(
                  flex: 2,
                  child:Row(children: [
                    Image.asset(indianRupee,height: 15,width: 15,),
                    width5,
                    CommonText(text: "₹50 (Inspection Charge)"),
                    

              ],) ),
              Expanded(child:   CommonButton(text: "Choose", onPress: onPressed,fontWeight: FontWeight.w400,textSize: 14,height: 40,))
            ],)



        ],) ,)
      ,);
  }
}
