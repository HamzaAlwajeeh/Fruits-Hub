import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigatorToOnBoardingView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesSplashTop)],
        ),
        SvgPicture.asset(Assets.imagesSplashCenter),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void navigatorToOnBoardingView() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
  }
}
