import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/core/utils/app_icons.dart';

class LocationHeaderDropdown extends StatelessWidget {
  final String title;
  final String selectedLocation;
  final VoidCallback? onTap;

  const LocationHeaderDropdown({
    super.key,
    this.title = 'DELIVER TO',
    required this.selectedLocation,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to left edge of text
        children: [
          Text(
            title,
            style: GoogleFonts.sen(
              color: const Color(0xFFFF7622),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2), // Small spacing between title and location
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                selectedLocation,
                style: GoogleFonts.sen(
                  color: const Color(0xFF32343E),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: SvgPicture.asset(
                  AppIcons.blackArrow,
                  width: 10,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF32343E),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
