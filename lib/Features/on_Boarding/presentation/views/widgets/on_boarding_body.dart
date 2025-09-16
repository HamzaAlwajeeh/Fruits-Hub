import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: AppColors.primaryColor.withOpacity(0.5),
            activeColor: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(text: 'ابدأ الان'),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
