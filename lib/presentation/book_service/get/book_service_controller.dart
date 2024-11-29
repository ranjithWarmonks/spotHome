import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:service/data/model/custom_model/bottom_custom_model.dart';
import 'package:service/data/model/custom_model/week_cutsom_model.dart';
import 'package:service/utils/image_assets.dart';

class BookServiceController extends GetxController{


  final DateTime today = DateTime.now();

  RxList<WeekCustomModel> weekDates=<WeekCustomModel>[].obs;
  RxList<BottomCustomModel> sessionList=<BottomCustomModel>[].obs;
  RxBool shareAddress=false.obs;

  TextEditingController textEditingController=TextEditingController();
  RxBool isEarliest=false.obs;


  // RxList<BottomCustomModel> sessionData=<>


  @override
  void onInit() {
    super.onInit();
    sessionList.add(BottomCustomModel(id: 1, image: morningIcon, isSelected: false, name: "Morning"));
    sessionList.add(BottomCustomModel(id: 2, image: afterNoonIcon, isSelected: false, name: "Afternoon"));
    sessionList.add(BottomCustomModel(id: 3, image: evgIcon, isSelected: false, name: "Evening"));

    weekDates.value = List.generate(
      7,
          (index) => WeekCustomModel(dateTime: today.add(Duration(days: index)),isSelected:false,id: index),
    );
  }

  void selectedWeek(int id){

    for(int j=0;j<weekDates.length;j++){
      weekDates[j].isSelected=false;
    }

    for(int j=0;j<weekDates.length;j++) {
      if (weekDates[j].id == id) {
        weekDates[j].isSelected = true;
      }
    }
    weekDates.refresh();
   }


   void sessionSelected(int id){
    for(int j=0;j<sessionList.length;j++){
      sessionList[j].isSelected=false;

    }

    for(int j=0;j<sessionList.length;j++){
      if(sessionList[j].id==id) {
        sessionList[j].isSelected = true;
      }
    }

    sessionList.refresh();
   }

}