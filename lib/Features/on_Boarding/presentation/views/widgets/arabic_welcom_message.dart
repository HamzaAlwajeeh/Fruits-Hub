import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ArabicWelcomMessage extends StatelessWidget {
  const ArabicWelcomMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).onBoarding_1_title, style: TextStyles.bold23),
        Text(
          S.of(context).secondAppName,
          style: TextStyles.bold23.copyWith(color: AppColors.secondaryColor),
        ),
        Text(
          S.of(context).firstAppName,
          style: TextStyles.bold23.copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
