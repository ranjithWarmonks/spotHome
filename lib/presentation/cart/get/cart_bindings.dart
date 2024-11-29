import 'package:get/get.dart';
import 'package:service/presentation/cart/get/cart_controller.dart';

class CartBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<CartController>(()=> CartController());
  }
}