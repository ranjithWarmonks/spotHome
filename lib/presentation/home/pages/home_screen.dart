import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:service/presentation/home/get/home_controller.dart';
import 'package:service/presentation/home/widget/customer_review_widget.dart';
import 'package:service/presentation/home/widget/explore_service_widget.dart';
import 'package:service/presentation/home/widget/popular_service_widget.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';
import 'package:service/widget/common_textField.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController textEditingController=TextEditingController();
    HomeScreen({super.key}){
      Get.lazyPut<HomeController>(() => HomeController());
    }

  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: Row(
          children: [
            Image.asset(
              customerSupportIcon,
              height: 40,
              width: 40,
            ),
            const Expanded(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  CommonText(text: "My Location"),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ])),
            Image.asset(
              notificationIcon,
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Main background container
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: const Column(
                    children: [
                      height20,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonText(
                            text: "Discover the ",
                            textSize: 25,
                          ),
                          CommonText(
                            text: "Finest Service",
                            textSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      height5,
                      CommonText(
                        text: "waiting for you!",
                        textSize: 25,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),

                // Positioned widget that overlaps half out of the Stack
                Positioned(
                  bottom: -20, // Negative offset
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width * .92,
                    height: MediaQuery.of(context).size.height * .10,
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Column(
                      children: [
                        CommonTextField(
                          width: MediaQuery.of(context).size.width,
                          hintText: "Explore services at your fingertips...",
                          textEditingController: textEditingController,
                        ),
                        height10,
                      ],
                    ),
                  ),
                ),
              ],
            ),


            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    height5,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CommonText(
                          text: "Explore Top Services Near You",
                          textSize: 16,
                        ),
                        CommonText(
                          text: "View All",
                          textColor: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          textSize: 14,
                        )
                      ],
                    )
                  ],
                )),
            Container(
                height: 120,
                margin: const EdgeInsets.only(left: 5),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const ExploreServiceWidget();
                    })),
            height10,
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  children: [
                    height5,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CommonText(
                          text: "Popular Service",
                          textSize: 16,
                        ),
                        CommonText(
                          text: "View All",
                          textColor: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          textSize: 14,
                        )
                      ],
                    )
                  ],
                )),
            Container(
                height: 200,
                margin: const EdgeInsets.only(left: 5),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const PopularServiceWidget();
                    })),
            height20,
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const CommonText(
                  text: "Here’s What Our Customers Say",
                  fontWeight: FontWeight.w600,
                  textSize: 16,
                )),
            height10,
            Container(
                height: 170,
                margin: const EdgeInsets.only(left: 15),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const CustomerReviewWidget();
                    })),
            height20,
          ],
        ),
      ),
    );
  }
}
