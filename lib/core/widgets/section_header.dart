import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onActionPressed;

  const SectionHeader({
    super.key,
    required this.title,
    this.actionText = 'See All',
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.sen(
            color: const Color(0xFF32343E),
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        TextButton(
          onPressed: onActionPressed,
          child: Row(
            children: [
              Text(
                actionText,
                style: GoogleFonts.sen(
                  color: const Color(0xFFA0A5BA),
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Color(0xFFA0A5BA),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
