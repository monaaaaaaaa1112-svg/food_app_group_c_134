import 'package:flutter/material.dart';
import 'package:food_app/features/search/data/product_model.dart';
import 'package:food_app/features/search/widgets/SuggestedRestaurantsList/build_restaurant_item.dart';

class SuggestedRestaurantsList extends StatelessWidget {
  const SuggestedRestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 10,
        childAspectRatio: 3,
      ),
      itemCount: suggestedRestaurants.length,
      itemBuilder: (context, index) {
        var model = suggestedRestaurants[index];

        return BuildRestaurantItem(model: model);
      },
    );
  }
}
