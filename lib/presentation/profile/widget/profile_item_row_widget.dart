import 'package:flutter/material.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class ProfileItemRowWidget extends StatelessWidget{
  final String name;
  final String image;
  final VoidCallback onPressed;

  const ProfileItemRowWidget({super.key,required this.onPressed,required this.name,required this.image});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed
        ,child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(children: [

      Row(children: [
        Image.asset(image,width: 24,height: 24,),
        width10,
        Expanded(child: CommonText(text: name)),
        Image.asset(arrowForwardIcon,height: 40,width: 40,)


      ],),
          Divider(thickness: 1,color: AppColors.lightWhite,)

    ],)));
  }
}