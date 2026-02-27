import 'package:flutter/material.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/home/screens/home_screen.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              width: 270,
              height: 250,
              decoration: BoxDecoration(
                color: AppColors.imageBackground,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 80),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Congratulations!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              'You successfully maked a payment,\n enjoy our service!',
              style: TextStyle(fontSize: 16, color: AppColors.describtion),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 50.0),
        child: CustomButton(
          text: 'Track Order',
          onPressed: () {
            pushReplacementTo(context, HomeScreen());
          },
        ),
      ),
    );
  }
}
