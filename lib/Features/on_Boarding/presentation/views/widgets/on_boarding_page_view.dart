import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/widgets/on_boarding_page_item.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnBoardingPageItem(
          background: Assets.imagesPageViewItem1Background,
          image: Assets.imagesPageViewItem1Image,
          title: Text('Welcome to Fruits Hub'),
          subTitle: 'The best place to buy fruits online',
        ),
        // OnBoardingPageItem(
        //   background: Assets.imagesPageViewItem2Background,
        //   image: Assets.imagesPageViewItem2Image,
        //   title: Text('Welcom to Fruits Hub'),
        //   subtitle: 'Our app is easy to use and navigate',
        // ),
      ],
    );
  }
}
