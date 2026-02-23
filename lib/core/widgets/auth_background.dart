import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';

class AuthBackground extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget content;
  final bool showBackButton;

  const AuthBackground({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121223),
      body: Stack(
        children: [
          // Top Left Curve
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              AppIcons.background1,
              width: 150,
            ),
          ),
          
          // Top Right Curve
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/icons/Vector 142.svg',
              width: 150,
            ),
          ),
          
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                if (showBackButton)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 10),
                      child: const CustomBackButton(),
                    ),
                  )
                else
                  const SizedBox(height: 50),
                  
                // Title and Subtitle
                Center(
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.sen(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        subtitle,
                        style: GoogleFonts.sen(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 30),
                
                // White container for body
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    padding: const EdgeInsets.all(24.0),
                    child: content,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
