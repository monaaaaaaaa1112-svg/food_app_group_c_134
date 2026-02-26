import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/features/search/data/product_model.dart';
import 'package:food_app/features/search/widgets/PopularFoodList/build_food_item.dart';

class PopularFoodList extends StatelessWidget {
  const PopularFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: popularFastFood.length,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        separatorBuilder: (context, index) {
          return SizedBox(width: 21.w);
        },
        itemBuilder: (context, index) {
          var model = popularFastFood[index];

          return BuildFoodItem(model: model);
        },
      ),
    );
  }
}
