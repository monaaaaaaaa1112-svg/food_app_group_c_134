import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/features/search/data/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 130,
          height: 170,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.greyLite,
                blurRadius: 3,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    model.name,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Text(
                    model.description ?? "",
                    style: TextStyles.captionB.copyWith(
                      fontSize: 10,
                      color: AppColors.describtion,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(model.price ?? ""),
                      ContainerButton(
                        height: 30,
                        width: 30,
                        color: AppColors.primary,
                        ontap: () {},
                        child: SvgPicture.asset(
                          AppIcons.plus,
                          colorFilter: ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            width: 114,
            height: 75,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.describtion,
            ),
          ),
        ),
      ],
    );
  }
}
