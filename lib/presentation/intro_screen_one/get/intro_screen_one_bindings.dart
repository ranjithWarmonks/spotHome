import 'package:get/get.dart';
import 'package:service/presentation/intro_screen_one/get/intro_screen_one_controller.dart';

class IntroScreenOneBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<IntroScreenOneController>(()=> IntroScreenOneController());
  }
}