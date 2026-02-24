import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/auth_background.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_field.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/features/home/screens/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      title: 'Sign Up',
      subtitle: 'Please sign up to get started',
      showBackButton: true,
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextField(
              label: 'NAME',
              hint: 'John doe',
            ),
            
            const SizedBox(height: 16),
            
            const CustomTextField(
              label: 'EMAIL',
              hint: 'example@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            
            const SizedBox(height: 16),
            
            CustomTextField(
              label: 'PASSWORD',
              hint: '• • • • • • • • • •',
              obscureText: true,
              suffixIcon: SvgPicture.asset('assets/icons/eye.svg', width: 24, height: 24),
            ),
            
            const SizedBox(height: 16),
            
            CustomTextField(
              label: 'RE-TYPE PASSWORD',
              hint: '• • • • • • • • • •',
              obscureText: true,
              suffixIcon: SvgPicture.asset('assets/icons/eye.svg', width: 24, height: 24),
            ),
            
            const SizedBox(height: 40),
            
            CustomButton(
              text: 'SIGN UP',
              onPressed: () {
                pushReplacementTo(context, const HomeScreen());
              },
            ),
            
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
