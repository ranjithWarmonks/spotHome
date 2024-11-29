import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/presentation/profile/get/profile_controller.dart';
import 'package:service/presentation/profile/widget/profile_item_row_widget.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';
import 'package:service/widget/common_app_bar.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class ProfileScreen extends StatelessWidget{

  final ProfileController profileController=Get.find<ProfileController>();

   ProfileScreen({super.key}){
     Get.lazyPut<ProfileController>(() => ProfileController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   CommonAppBar(text: "My Profile",showBack: false,bgColor: AppColors.primaryColor,),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding:const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius:const BorderRadius.only(bottomRight:  Radius.circular(35),bottomLeft: Radius.circular(35) )
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           Stack(
               alignment: Alignment.topRight,
               children: [
                 CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(child: Image.asset(profileImage)),
              ),
            ),
           Image.asset(editPic,height: 32,width: 32,),
           ]),
            height15,
            const CommonText(text: "Welcome"),
            height5,
            const CommonText(text: "Amelia Clark",textSize: 20,fontWeight: FontWeight.bold,)
        ],),),

        Expanded(child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child:Column(children: [

          ProfileItemRowWidget(onPressed: (){
            Get.toNamed(Routes.myProfileScreen);
          }, name: "My profile",image: myProfileIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "Register as expert",image: registerIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "My Bookings",image: myBookingIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "Address & Location", image: addressLocIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "Notifications",image: notificationsIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "Help & Support",image: helpIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "Settings",image: settingsIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "Legal",image: legalIcon,),
            ProfileItemRowWidget(onPressed: (){}, name: "Rate us",image: rateIcon,),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
              decoration: BoxDecoration(
                  color: AppColors.creamColor,
                  borderRadius: BorderRadius.circular(5)),
              child: const CommonText(text: "Logout",textSize: 16,),)
        ],) ,)),
        


        
      ],),
    );
  }
}