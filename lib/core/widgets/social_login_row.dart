import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialIcon('assets/icons/facebook.svg'),
        const SizedBox(width: 20),
        _buildSocialIcon('assets/icons/x.svg'), // Use X icon
        const SizedBox(width: 20),
        _buildSocialIcon('assets/icons/apple.svg'),
      ],
    );
  }

  Widget _buildSocialIcon(String iconPath) {
    return Container(
      width: 62,
      height: 62,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        iconPath,
        width: 62,
        height: 62,
      ),
    );
  }
}
