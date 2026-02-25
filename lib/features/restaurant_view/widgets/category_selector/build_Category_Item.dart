import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/features/search/data/product_model.dart';

class BuildCategoryItem extends StatelessWidget {
  final ProductModel model;
  final bool isSelected;
  final VoidCallback onTap;

  const BuildCategoryItem({
    super.key,
    required this.model,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 60,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: isSelected ? AppColors.primary : AppColors.white,
          boxShadow: [BoxShadow(color: AppColors.describtion, blurRadius: 3)],
        ),
        child: Center(
          child: Text(
            model.name,

            style: TextStyles.caption.copyWith(
              color: isSelected ? AppColors.white : AppColors.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
