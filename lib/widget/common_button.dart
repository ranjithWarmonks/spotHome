import 'package:flutter/material.dart';
import 'package:service/widget/common_text.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final bool isACtive;
  final Color bgColor;
  final Color normalBg;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;
  final Color borderColor;
  final VoidCallback onPress;

  const CommonButton(
      {super.key,
      required this.text,
      this.bgColor = const Color(0xffFAB706),
      this.isACtive = true,
      this.height = 50,
      this.width = 200,
      this.normalBg = const Color(0xffFAB706),
      this.textColor = Colors.black,
      this.textSize = 14,
      this.fontWeight = FontWeight.w600,
      this.borderColor = const Color(0xffFAB706),
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isACtive ? bgColor : normalBg,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: borderColor, width: 2)),
          child: CommonText(
            text: text,
            fontWeight: fontWeight,
            textAlign: TextAlign.center,
            textColor: textColor,
            textSize: textSize,
          ),
        ));
  }
}
