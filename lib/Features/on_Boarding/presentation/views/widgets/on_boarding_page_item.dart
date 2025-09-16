import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/helper/functions/check_current_language.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OnBoardingPageItem extends StatelessWidget {
  const OnBoardingPageItem({
    super.key,
    required this.background,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isVisable,
  });
  final String background;
  final String image;
  final Widget title;
  final String subTitle;
  final bool isVisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(background, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisable,
                child: Positioned(
                  left: chickCurrentLanguage() == 'ar' ? 0 : null,
                  right: chickCurrentLanguage() == 'en' ? 0 : null,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('تخط', style: TextStyles.regular13),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            style: TextStyles.semiBold13.copyWith(color: Color(0xff4E5556)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
