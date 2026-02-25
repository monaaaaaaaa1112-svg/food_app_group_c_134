import 'package:flutter/material.dart';

import 'package:food_app/features/restaurant_view/widgets/food_card_list/product_card.dart';
import 'package:food_app/features/search/data/product_model.dart';

class FoodCardList extends StatelessWidget {
  const FoodCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: productCard.length,

        padding: EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) {
          return SizedBox(width: 21);
        },
        itemBuilder: (context, index) {
          var model = productCard[index];
          return ProductCard(model: model);
        },
      ),
    );
  }
}
