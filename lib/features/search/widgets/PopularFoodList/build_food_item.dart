import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/features/search/data/product_model.dart';

class BuildFoodItem extends StatelessWidget {
  const BuildFoodItem({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: 153,
            height: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.greyLite,
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(model.name),
                  Center(
                    child: Text(
                      model.description!,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.describtion,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Container(
            width: 122,
            height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.describtion,
            ),
          ),
        ),
      ],
    );
  }
}
