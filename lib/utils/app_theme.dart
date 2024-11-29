import 'package:flutter/material.dart';

class AppTheme {
  static final appThemeConfig = ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: "Poppins",
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 18,
      shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 0.5)],
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.grey[100], // You can customize this
    ),
    dialogBackgroundColor: Colors.white,
  );
}
