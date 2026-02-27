import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryListPayments extends StatelessWidget {
  final List<String> categories;
  final Function(String category)? onCategoryTap;
  final List<String>? icons;

  const CategoryListPayments({
    super.key,
    required this.categories,
    this.onCategoryTap,
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          160, // Adjusted height to accommodate 122px image + text + spacing
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isLast = index == categories.length - 1;
          return Padding(
            padding: EdgeInsets.only(right: isLast ? 0 : 16.0),
            child: GestureDetector(
              onTap: () => onCategoryTap?.call(categories[index]),
              child: Column(
                children: [
                  // Image container
                  Container(
                    width: 105,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors
                          .lightGrey, // Placeholder color for the image background
                      borderRadius: BorderRadius.circular(
                        24,
                      ), // Outer radius as per design
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(
                          16,
                        ), // Padding inside the image container
                        width: 85,
                        height: 72,
                        decoration: BoxDecoration(
                          color: Colors
                              .transparent, // Same grey placeholder color as RestaurantCard
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // Inner radius
                        ),
                        // Inside here would be the actual product image.
                        child: SvgPicture.asset(
                          icons != null && index < icons!.length
                              ? icons![index]
                              : 'assets/icons/placeholder.svg', // Fallback placeholder icon

                          width: 96,
                          height: 81,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Category Text
                  Text(
                    categories[index],
                    style: GoogleFonts.sen(
                      color: const Color(0xFF32343E),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
