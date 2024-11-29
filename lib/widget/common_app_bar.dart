import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service/utils/image_assets.dart';
import 'package:service/widget/common_text.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final bool showBack;
  final Color bgColor;
  const CommonAppBar({super.key, required this.text, this.showBack = true,this.bgColor=Colors.white});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: bgColor,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showBack
              ? GestureDetector(
                  onTap: () {

                    Get.back();
                  },
                  child: Image.asset(
                    backIcon,
                    height: 40,
                    width: 40,
                  ))
              : Container(),
          Expanded(
              child:Container(
                  alignment: Alignment.centerRight,
                  child: CommonText(
            text: text,
            textAlign: TextAlign.right,
          )))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
