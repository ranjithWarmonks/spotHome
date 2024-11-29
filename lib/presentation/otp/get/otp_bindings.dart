import 'package:get/get.dart';
import 'package:service/presentation/otp/get/otp_controller.dart';

class OtpBindings implements Bindings{


  @override
  void dependencies() {

    Get.lazyPut<OtpController>(()=> OtpController());
  }
}