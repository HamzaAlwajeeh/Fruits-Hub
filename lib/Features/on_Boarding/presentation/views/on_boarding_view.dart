import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'onBoarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: OnBoardingBody()),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: Colors.amber,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
