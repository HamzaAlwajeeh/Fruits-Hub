import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/functions/check_current_language.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class TearmsAndConditionsText extends StatelessWidget {
  const TearmsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).TearmsAndConditions1,
            style: TextStyles.semiBold14.copyWith(
              color: AppColors.textgreyColor,
            ),
          ),
          TextSpan(
            text:
                chickCurrentLanguage() == 'ar'
                    ? S.of(context).TearmsAndConditions2
                    : S.of(context).TearmsAndConditions3,
            style: TextStyles.semiBold14.copyWith(
              color: AppColors.lightprimaryColor,
            ),
          ),
          TextSpan(
            text:
                chickCurrentLanguage() == 'ar'
                    ? S.of(context).TearmsAndConditions3
                    : S.of(context).TearmsAndConditions2,
            style: TextStyles.semiBold14.copyWith(
              color: AppColors.lightprimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
