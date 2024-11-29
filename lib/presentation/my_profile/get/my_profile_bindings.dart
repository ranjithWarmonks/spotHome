import 'package:get/get.dart';
import 'package:service/presentation/my_profile/get/my_profile_controller.dart';

class MyProfileBindings implements Bindings{


  @override
  void dependencies() {
    Get.lazyPut<MyProfileController>(()=>MyProfileController());
  }
}