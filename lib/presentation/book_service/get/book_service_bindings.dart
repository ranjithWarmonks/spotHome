import 'package:get/get.dart';
import 'package:service/presentation/book_service/get/book_service_controller.dart';

class BookServiceBindings implements Bindings{

  @override
  void dependencies() {

    Get.lazyPut<BookServiceController>(()=> BookServiceController());
  }
}