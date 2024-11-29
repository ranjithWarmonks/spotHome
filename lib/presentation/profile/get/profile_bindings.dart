import 'package:get/get.dart';
import 'package:service/presentation/profile/get/profile_controller.dart';

class ProfileBindings implements Bindings{

  @override
  void dependencies() {
   Get.lazyPut<ProfileController>(()=> ProfileController());
  }
}