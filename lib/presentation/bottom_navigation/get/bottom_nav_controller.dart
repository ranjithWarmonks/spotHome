import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:service/data/model/custom_model/bottom_custom_model.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/utils/routes/routes.dart';

class BottomNavController extends GetxController {
  RxList<BottomCustomModel> dataList = <BottomCustomModel>[].obs;

  RxInt id = 1.obs;

  @override
  void onInit() {
    super.onInit();
    bottomData();
  }

  bottomData() {
    dataList.add(BottomCustomModel(
        id: 1, image: homeIcon, isSelected: true, name: "Home"));
    dataList.add(BottomCustomModel(
        id: 2, image: serviceIcon, isSelected: false, name: "Service"));
    dataList.add(BottomCustomModel(
        id: 3, image: bookingIcon, isSelected: false, name: "Booking"));
    dataList.add(BottomCustomModel(
        id: 4, image: loginIcon, isSelected: false, name: "Login"));
  }

  changeSelection(int ids) {
    for (int j = 0; j < dataList.length; j++) {
      dataList[j].isSelected = false;
    }
    for (int j = 0; j < dataList.length; j++) {
      if (dataList[j].id == ids) {
        print(ids);
        dataList[j].isSelected = true;
      }
    }
    id.value = ids;
    dataList.refresh();
  }


}
