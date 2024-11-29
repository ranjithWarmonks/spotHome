import 'package:get/get.dart';

class MyBookingController extends GetxController{


  RxInt selected=0.obs;
  @override
  void onInit() {
    super.onInit();
    selected.value=1;

  }
}