import 'package:flutter/material.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/widgets/category_list_payment.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/payments/screens/congrats_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 60.0, 25.0, 0.0),
          child: Column(
            children: [
              Row(
                children: [
                  CustomBackButton(
                    backgroundColor: AppColors.lightGrey,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 20),
                  Text('Payment', style: TextStyles.body),
                ],
              ),
              SizedBox(height: 40),
              CategoryListPayments(
                icons: [
                  'assets/icons/cash.svg',
                  'assets/icons/visa.svg',
                  'assets/icons/mastercard.svg',
                  'assets/icons/paypal.svg',
                ],
                categories: ['Cash', 'visa', 'MasterCard', 'PayPal'],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 300,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/bigcard.png',
                          width: 210,
                          // height: 160,
                          // fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('No master card added', style: TextStyles.body2),
                      SizedBox(height: 8),
                      Text(
                        'You can add a mastercard and\n save it for later',
                        style: TextStyles.caption,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Add MasterCard',
                    style: TextStyles.body2.copyWith(color: AppColors.primary),
                  ),
                ),
              ),
              SizedBox(height: 80),
              CustomButton(
                text: 'Pay & Confirm',
                onPressed: () {
                  pushTo(context, CongratsScreen());
                  // Handle payment logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
