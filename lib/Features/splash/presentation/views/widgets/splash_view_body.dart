import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/Features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/Features/on_Boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/helper/functions/check_current_language.dart';
import 'package:fruits_hub/core/services/shared_pref_singleton.dart';
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
          mainAxisAlignment:
              chickCurrentLanguage() == 'ar'
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesSplashTop)],
        ),
        SvgPicture.asset(Assets.imagesSplashCenter),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void navigatorToOnBoardingView() async {
    bool isOnBoardingSeen = Prefs.getBool(kIsOnBoardingSeen);
    await Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
