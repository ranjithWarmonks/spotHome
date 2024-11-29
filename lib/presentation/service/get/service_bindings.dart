import 'package:get/get.dart';
import 'package:service/presentation/service/get/service_controller.dart';

class ServiceBindings implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut<ServiceController>(() => ServiceController());
  }
}
