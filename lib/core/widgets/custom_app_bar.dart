import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/helper/functions/check_current_language.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

AppBar customAppBar({
  required BuildContext context,
  required String title,
  bool isFirstPage = false,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Visibility(
      visible: !isFirstPage,
      child: IconButton(
        icon:
            chickCurrentLanguage() == 'ar'
                ? SvgPicture.asset(Assets.imagesArrowBack)
                //flip icon as miiror
                : Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: SvgPicture.asset(Assets.imagesArrowBack),
                ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
    title: Text(title, style: TextStyles.bold19),
    centerTitle: true,
  );
}
