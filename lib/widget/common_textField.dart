import 'package:flutter/material.dart';
import 'package:service/utils/app_colors.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool hasBorder;
  final double height;
  final double width;
  final Color bgColor;
  final String hintText;
  final int miniLines;
  final Color borderColor;


  const CommonTextField({super.key,required this.hintText ,required this.textEditingController,this.hasBorder=false,this.height=50,this.width=200,this.bgColor=const Color(0xffF7F7F7),this.miniLines=1,this.borderColor=Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,

        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border:  Border.all(width: 1,color: borderColor)
        ),
        child: TextFormField(
      controller: textEditingController,
          minLines: miniLines,
          maxLines: 100,
          decoration:InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.hintTextColor,fontSize: 14),
            contentPadding:const EdgeInsets.all(5),
            border: InputBorder.none, // Disables the border
            enabledBorder: InputBorder.none, // Disables enabled state border
            focusedBorder: InputBorder.none,
          ),
    ));
  }
}
