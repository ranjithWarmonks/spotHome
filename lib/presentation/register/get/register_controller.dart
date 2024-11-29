import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

  TextEditingController fullNameTxt=TextEditingController();
  TextEditingController phoneNumberTxt=TextEditingController();
  TextEditingController emailAddressTxt=TextEditingController();
  TextEditingController passwordTxt=TextEditingController();
  RxBool rememberPassword=false.obs;


}