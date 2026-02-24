import 'package:flutter/material.dart';

import '../../../core/widgets/auth_background.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_field.dart';

import 'package:food_app/features/auth/screens/verification_screen.dart';
import 'package:food_app/core/functions/navigations.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      title: 'Forgot Password',
      subtitle: 'Please sign in to your existing account',
      showBackButton: true,
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            
            const CustomTextField(
              label: 'EMAIL',
              hint: 'example@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            
            const SizedBox(height: 40),
            
            CustomButton(
              text: 'SEND CODE',
              onPressed: () {
                pushTo(context, const VerificationScreen());
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
