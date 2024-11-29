import 'package:flutter/material.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_button.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class DraftWidget extends StatelessWidget{

  final VoidCallback onPressed;
  const DraftWidget({super.key,required this.onPressed});



  @override
  Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       const CommonText(text: "Wooden door - repair / assembly (Inspection charges)",fontWeight: FontWeight.w600,),
       height5,
       const  CommonText(text: "12-01-2024, Sun 06 PM - 07 PM",textSize: 12,),
       height5,
       const  CommonText(text: "₹108.00",textSize: 20,fontWeight: FontWeight.w600,),
       height5,
       Row(children: [
         Expanded(child: CommonButton(
           borderColor: Colors.transparent,
           textColor: Colors.white,
           bgColor: Colors.black,text: "Find Order", onPress: onPressed,height: 32,)),
         width10,
         Image.asset(deleteIcon,height: 32,width: 32,)

       ],),
       height5,
     ],);

  }
}