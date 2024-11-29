import 'package:get/get.dart';
import 'package:service/presentation/selected_service_details/get/selected_service_details_controller.dart';

class SelectedServiceDetailsBindings implements Bindings{

  @override
  void dependencies() {
   Get.lazyPut<SelectedServiceDetailsController>(()=>SelectedServiceDetailsController());
  }
}