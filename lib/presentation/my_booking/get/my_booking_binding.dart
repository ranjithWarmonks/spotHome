import 'package:get/get.dart';
import 'package:service/presentation/my_booking/get/my_booking_controller.dart';

class MyBookingBindings implements Bindings{


  @override
  void dependencies() {
    Get.lazyPut<MyBookingController>(()=> MyBookingController());


  }
}