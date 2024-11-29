import 'package:get/get.dart';
import 'package:service/presentation/register/get/register_controller.dart';

class RegisterBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(()=> RegisterController());
  }
}