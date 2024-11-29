import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/book_service/page/book_service_screen.dart';
import 'package:service/presentation/bottom_navigation/get/bottom_nav_controller.dart';
import 'package:service/presentation/bottom_navigation/widget/bottom_cart_widget.dart';
import 'package:service/presentation/home/pages/home_screen.dart';
import 'package:service/presentation/my_booking/page/my_booking_screen.dart';
import 'package:service/presentation/profile/page/profile_screen.dart';
import 'package:service/presentation/service/pages/service_screen.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/routes/routes.dart';

class BottomNavigation extends GetWidget<BottomNavController> {
  const BottomNavigation({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.id.value) {
          case 1:
            return HomeScreen();
          case 2:
            return ServiceScreen();
          case 3:
            return MyBookingScreen();
          default:
            return ProfileScreen();
        }
          }),
      bottomNavigationBar: Obx(() => Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            child: Row(
              children: [
                BottomCartWidget(
                  voidCallback: () {
                    controller.id.value = controller.dataList[0].id;
                    controller.changeSelection(controller.dataList[0].id);
                  },
                  customModel: controller.dataList[0],
                ),
                BottomCartWidget(
                  voidCallback: () {
                    controller.id.value = controller.dataList[1].id;
                    controller.changeSelection(controller.dataList[1].id);
                  },
                  customModel: controller.dataList[1],
                ),
                BottomCartWidget(
                  voidCallback: () {
                    controller.id.value = controller.dataList[2].id;
                    controller.changeSelection(controller.dataList[2].id);
                  },
                  customModel: controller.dataList[2],
                ),
                BottomCartWidget(
                  voidCallback: () {
                    controller.id.value = controller.dataList[3].id;
                    controller.changeSelection(controller.dataList[3].id);
                  },
                  customModel: controller.dataList[3],
                ),
              ],
            ),
          )),
    );
  }
}
