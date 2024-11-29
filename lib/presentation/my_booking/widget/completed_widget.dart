
import 'package:flutter/material.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class CompletedWidget extends StatelessWidget{
  const CompletedWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            height5,
            Container(
              padding:const  EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
              ),
              child:const  CommonText(text: "Task Completed on 25th, Dec",textSize: 12,textColor: Colors.white,),),
            height5,
            const CommonText(text: "Wooden door - repair / assembly (Inspection charges)",fontWeight: FontWeight.w600,),
            height5,
            const  CommonText(text: "12-01-2024, Sun 06 PM - 07 PM",textSize: 12,),
            height5,
            const  CommonText(text: "₹108.00",textSize: 20,fontWeight: FontWeight.w600,),
            height5,
          ]);
  }
}