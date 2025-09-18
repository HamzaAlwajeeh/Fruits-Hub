import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/sign_up_view.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class DontHaveAnAccountText extends StatelessWidget {
  const DontHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).DontHaveAccount,
          style: TextStyles.semiBold16.copyWith(color: AppColors.textgreyColor),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SignUpView.routeName);
          },
          child: Text(
            S.of(context).SignUp,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
