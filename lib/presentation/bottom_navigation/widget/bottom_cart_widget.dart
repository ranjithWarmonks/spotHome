import 'package:flutter/material.dart';
import 'package:service/data/model/custom_model/bottom_custom_model.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class BottomCartWidget extends StatelessWidget {
  final BottomCustomModel customModel;
  final VoidCallback voidCallback;

  const BottomCartWidget(
      {super.key, required this.customModel, required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: voidCallback,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: customModel.isSelected
                        ? AppColors.lightYellow
                        : Colors.transparent,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        customModel.image,
                        height: 20,
                        width: 20,
                      ),
                      height5,
                      CommonText(text: customModel.name),
                    ]))));
  }
}
