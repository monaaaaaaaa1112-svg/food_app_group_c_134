import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  final String iconPath;
  final String text;
  final TextStyle textStyle;
  final Color iconColor;
  final double iconSize;

  const IconText({
    super.key,
    required this.iconPath,
    required this.text,
    required this.textStyle,
    this.iconColor = const Color(0xFFFF7622),
    this.iconSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          width: iconSize,
          height: iconSize,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
