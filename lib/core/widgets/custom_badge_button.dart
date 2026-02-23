import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBadgeButton extends StatelessWidget {
  final String iconPath;
  final int itemCount;
  final VoidCallback? onPressed;

  const CustomBadgeButton({
    super.key,
    required this.iconPath,
    this.itemCount = 0,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Color(0xFF181C2E),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              iconPath,
              width: 20,
              height: 20,
              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          if (itemCount > 0)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Color(0xFFFF7622),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  itemCount.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
