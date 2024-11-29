import 'package:flutter/material.dart';
import 'package:service/utils/app_colors.dart';


class ServiceTypeWidget extends StatelessWidget {
  const ServiceTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories
    final categories = [
      "Technology",
      "Health",
      "Food",
      "Sports",
      "Science",
    ];

    return Wrap(
      spacing: 2.0, // Horizontal space between items
      runSpacing: 0.0, // Vertical space between rows
      children: categories
          .map(
            (category) => Chip(
          labelPadding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0), // Internal label padding
          padding: EdgeInsets.zero,
          label: Text(
             category,
            style:TextStyle(fontSize:  8,color: AppColors.hintTextColor),
          ),
          backgroundColor: AppColors.creamColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: AppColors.primaryColor, // Border color
              width: 1.0, // Border width
            ),
          ),
        ),
      )
          .toList(),
    );

  }
}