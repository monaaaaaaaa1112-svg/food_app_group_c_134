import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/core/widgets/custom_text_field.dart';
import 'package:food_app/features/payment/screens/payment_screen.dart';
import 'package:food_app/features/cart/widgets/product_vertical_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 45.w,
                              height: 45.h,
                              decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: AppColors.white,
                                  size: 18.r,
                                ),
                                onPressed: () {
                                  pop(context);
                                },
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Text(
                              'Cart',
                              style: TextStyles.body.copyWith(
                                color: AppColors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          child: Text(
                            'DONE',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.green,
                              fontSize: 14.sp,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    const ProductVerticalCard(
                      title: 'Pizza Calzone\n European',
                      price: '52.33',
                      size: '14',
                    ),
                    SizedBox(height: 30.h),
                    const ProductVerticalCard(
                      title: 'Pizza Calzone\n European',
                      price: '32.33',
                      size: '16',
                    ),
                    SizedBox(height: 340.h), // Space for the bottom container
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DELIVERY ADDRESS',
                          style: TextStyles.captionB.copyWith(
                            color: AppColors.imageBackground,
                          ),
                        ),
                        Text(
                          'EDIT',
                          style: TextStyles.caption.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    const CustomTextField(
                      label: '',
                      hint: 'Enter your delivery address',
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'TOTAL :',
                              style: TextStyles.captionB.copyWith(
                                color: AppColors.imageBackground,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              '\$84.66',
                              style: TextStyles.body.copyWith(
                                color: AppColors.secondary,
                                fontSize: 22.sp,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Breakdown',
                                style: TextStyles.caption.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12.r,
                                color: AppColors.imageBackground,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                      text: 'CHECK OUT',
                      onPressed: () {
                        pushTo(context, const PaymentScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
