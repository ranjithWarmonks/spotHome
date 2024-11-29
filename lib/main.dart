import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/home/get/home_controller.dart';
import 'package:service/presentation/my_booking/get/my_booking_controller.dart';
import 'package:service/presentation/profile/get/profile_controller.dart';
import 'package:service/presentation/splash_screen/splash_screen.dart';
import 'package:service/utils/app_theme.dart';
import 'package:service/utils/routes/pages_routes.dart';

void main() {
  Get.lazyPut<MyBookingController>(() => MyBookingController());
  Get.lazyPut<HomeController>(() => HomeController());
  Get.lazyPut<ProfileController>(() => ProfileController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Service',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appThemeConfig,
      getPages: PagesRoutes.pages,
      home: const SplashScreen(),
    );
  }
}
