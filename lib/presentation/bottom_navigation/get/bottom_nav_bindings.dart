import 'package:get/get.dart';
import 'package:service/presentation/bottom_navigation/get/bottom_nav_controller.dart';

class BottomNavBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
  }
}
