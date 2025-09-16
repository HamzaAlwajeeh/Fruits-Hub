import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPageItem extends StatelessWidget {
  const OnBoardingPageItem({
    super.key,
    required this.background,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String background;
  final String image;
  final Widget title;
  final String subTitle;

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
              Padding(padding: const EdgeInsets.all(25.0), child: Text('تخط')),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(subTitle, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
