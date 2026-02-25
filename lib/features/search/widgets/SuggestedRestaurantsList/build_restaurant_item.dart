import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/icon_text.dart';
import 'package:food_app/features/search/data/product_model.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildRestaurantItem extends StatelessWidget {
  const BuildRestaurantItem({super.key, required this.model});

  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 20),
              child: Container(
                width: 70,
                height: 57,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.describtion,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.name, style: TextStyle(fontSize: 16.sp)),
                IconText(
                  iconPath: AppImages.star,
                  text: model.rating!,
                  textStyle: GoogleFonts.sen(
                    color: const Color(0xFF181C2E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Divider(),
        ),
      ],
    );
  }
}
