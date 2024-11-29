import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashUIState();
}

class SplashUIState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashTimer(context);
  }

  splashTimer(context) async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAllNamed(Routes.introScreenOne);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(splashScreen,fit: BoxFit.fill,))
    );
  }
}
