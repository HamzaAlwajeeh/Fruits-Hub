import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/custom_or_divider.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/dont_have_an_account_text.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: S.of(context).Email,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: S.of(context).Password,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.textgreyColor,
              ),
            ),
            SizedBox(height: 16),
            Text(
              S.of(context).ForgotPassword,
              style: TextStyles.semiBold14.copyWith(
                color: AppColors.lightprimaryColor,
              ),
            ),
            SizedBox(height: 33),
            CustomButton(onPressed: () {}, text: S.of(context).Login),
            SizedBox(height: 33),
            DontHaveAnAccountText(),
            SizedBox(height: 28),
            CustomOrDivider(),
          ],
        ),
      ),
    );
  }
}
