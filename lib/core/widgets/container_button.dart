import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.color,
    required this.ontap,
    required this.child,
    this.height = 45,
    this.width = 45,
  });
  final Color color;
  final Widget child;
  final Function ontap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap;
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: child,
      ),
    );
  }
}
