import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double textSize;
  final Color textColor;
  final TextAlign textAlign;
  final int maxLines;

  const CommonText(
      {super.key,
      required this.text,
      this.maxLines = 100,
      this.fontWeight = FontWeight.w400,
      this.textSize = 14,
      this.textColor = Colors.black,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontWeight: fontWeight,
          fontFamily: 'Poppins'),
    );
  }
}
