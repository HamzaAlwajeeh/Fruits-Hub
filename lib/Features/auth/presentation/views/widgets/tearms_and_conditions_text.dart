import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class TearmsAndConditionsText extends StatelessWidget {
  const TearmsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'من خلال إنشاء حساب ، فإنك توافق على ',
            style: TextStyles.semiBold14.copyWith(
              color: AppColors.textgreyColor,
            ),
          ),
          TextSpan(
            text: 'الشروط والأحكام الخاصة بنا',
            style: TextStyles.semiBold14.copyWith(
              color: AppColors.lightprimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
