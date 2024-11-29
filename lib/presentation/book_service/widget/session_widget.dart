import 'package:flutter/material.dart';
import 'package:service/data/model/custom_model/bottom_custom_model.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class SessionWidget extends StatelessWidget {
  final BottomCustomModel bottomCustomModel;
  final VoidCallback onPressed;
   const SessionWidget({super.key,required this.bottomCustomModel,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * .11,
      decoration: BoxDecoration(
        color:bottomCustomModel.isSelected ? AppColors.primaryColor:AppColors.lightWhite,
        borderRadius:const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset(bottomCustomModel.image,height: 35,width: 35,fit: BoxFit.fill,),
        height5,
         CommonText(text: bottomCustomModel.name,textSize: 16,)
      ],)),
    );
  }
}
