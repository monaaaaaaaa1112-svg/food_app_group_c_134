import 'package:flutter/material.dart';
import 'package:food_app/features/search/data/product_model.dart';

class BuildKeywordChip extends StatelessWidget {
  const BuildKeywordChip({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Color(0xffEDEDED), spreadRadius: 2)],
      ),
      margin: const EdgeInsets.all(5),
      child: Center(child: Text(model.name)),
    );
  }
}
