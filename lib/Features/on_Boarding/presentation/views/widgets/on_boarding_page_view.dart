import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/widgets/arabic_welcom_message.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/widgets/english_welcom_message.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/widgets/on_boarding_page_item.dart';
import 'package:fruits_hub/core/helper/functions/check_current_language.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: BouncingScrollPhysics(),
      children: [
        OnBoardingPageItem(
          isVisable: true,
          background: Assets.imagesPageViewItem1Background,
          image: Assets.imagesPageViewItem1Image,
          title:
              chickCurrentLanguage() == 'ar'
                  ? ArabicWelcomMessage()
                  : EnglishWelcomMessage(),
          subTitle: S.of(context).onBoarding_1_SubTitle,
        ),
        OnBoardingPageItem(
          isVisable: false,
          background: Assets.imagesPageViewItem2Background,
          image: Assets.imagesPageViewItem2Image,
          title: Text(
            S.of(context).onBoarding_2_title,
            style: TextStyles.bold23,
          ),
          subTitle: S.of(context).onBoarding_2_SubTitle,
        ),
      ],
    );
  }
}
