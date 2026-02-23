import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/auth_background.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:food_app/features/home/screens/home_screen.dart';
import 'package:food_app/core/functions/navigations.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      title: 'Verification',
      subtitle: 'We have sent a code to your email\nexample@gmail.com',
      showBackButton: true,
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            
            // Code inputs and resend
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                    'CODE',
                    style: GoogleFonts.sen(
                      color: const Color(0xFF32343E), // dark text
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                 Row(
                    children: [
                      Text(
                        'Resend',
                        style: GoogleFonts.sen(
                          color: const Color(0xFF32343E), // dark text
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF32343E),
                        ),
                      ),
                      Text(
                        ' in 50sec',
                        style: GoogleFonts.sen(
                          color: const Color(0xFF7E8CA0), // grey text
                          fontSize: 14,
                        ),
                      ),
                    ],
                 )
              ],
            ),
            
            const SizedBox(height: 16),
            
            OtpTextField(
              numberOfFields: 4,
              borderColor: Colors.transparent,
              focusedBorderColor: const Color(0xFFFF7622),
              enabledBorderColor: Colors.transparent,
              fillColor: const Color(0xFFF0F5FA),
              filled: true,
              textStyle: GoogleFonts.sen(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              showFieldAsBox: true,
              fieldWidth: 60,
              borderRadius: BorderRadius.circular(10),
              keyboardType: TextInputType.number,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              onCodeChanged: (String code) {
                // Handle validation or checks when code changes
              },
              onSubmit: (String verificationCode){
                // Automatically move to the next screen when the code is completed
                pushReplacementTo(context, const HomeScreen());
              },
            ),
            
            const SizedBox(height: 40),
            
            CustomButton(
              text: 'VERIFY',
              onPressed: () {},
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

    // buildCodeBox removed in favor of OtpTextField
}
