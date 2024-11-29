import 'package:flutter/material.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class ServiceDetailsWidget extends StatelessWidget {
 final VoidCallback onPressed;
  const ServiceDetailsWidget({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 140,
        width: MediaQuery.of(context).size.width,
        padding:const  EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
                image: AssetImage(service), fit: BoxFit.cover)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CommonText(
              text: "Painting",
              fontWeight: FontWeight.bold,
              textSize: 14,
              textColor: Colors.white,
            ),
            CommonText(
              text: "Wall Decor",
              fontWeight: FontWeight.w200,
              textSize: 14,
              textColor: Colors.white,
            ),
            height5
          ],
        ),
      ),
    );
  }
}
