import 'package:get/get.dart';
import 'package:service/presentation/selected_service/get/selected_service_controller.dart';

class SelectedServiceBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<SelectedServiceController>(() => SelectedServiceController());
  }
}