import 'package:get/get.dart';
import 'package:service/presentation/login/get/login_controller.dart';

class LoginBindings extends Bindings{

  @override
  void dependencies() {
   Get.lazyPut<LoginController>(()=> LoginController());
  }
}