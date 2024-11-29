import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:service/data/model/custom_model/week_cutsom_model.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/widget/common_text.dart';

class WeekWidget extends StatelessWidget {
  final WeekCustomModel dateTime;
  final VoidCallback onPressed;

  const WeekWidget({super.key,required this.dateTime,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color:dateTime.isSelected ? AppColors.primaryColor: AppColors.lightWhite,
        borderRadius:const  BorderRadius.all(Radius.circular(10))

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        CommonText(text: dateTime.dateTime.day.toString()),
        CommonText(text: DateFormat("EEE").format(dateTime.dateTime)),



    ],),));
  }
}
