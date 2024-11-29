import 'package:flutter/material.dart';
import 'package:service/utils/app_colors.dart';
import 'package:service/widget/common_sizebox.dart';
import 'package:service/widget/common_text.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 160,
      margin: EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: "''",
            fontWeight: FontWeight.bold,
            textSize: 16,
          ),
          height10,
          CommonText(
            text:
                "I booked a plumbing service, and the technician arrived within an hour. Quick, professional, and affordable!",
            maxLines: 4,
          ),
          height10,
          Row(
            children: [
              CommonText(
                text: "Ranjith , ",
                fontWeight: FontWeight.w600,
                textSize: 14,
              ),
              CommonText(
                text: "Palakkad",
                textSize: 14,
              ),
            ],
          )
        ],
      ),
    );
  }
}
