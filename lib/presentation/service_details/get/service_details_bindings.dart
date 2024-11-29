import 'package:get/get.dart';

class ServiceDetailsBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ServiceDetailsBindings>(() => ServiceDetailsBindings());
  }
}