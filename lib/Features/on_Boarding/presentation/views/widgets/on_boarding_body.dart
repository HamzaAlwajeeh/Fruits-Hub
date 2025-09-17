import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color:
                currentPage == 0
                    ? AppColors.primaryColor.withOpacity(0.5)
                    : AppColors.primaryColor,
            activeColor: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 43),
        Visibility(
          visible: currentPage != 0,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomButton(
              onPressed: () {},
              text: S.of(context).onBoardingButton,
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
