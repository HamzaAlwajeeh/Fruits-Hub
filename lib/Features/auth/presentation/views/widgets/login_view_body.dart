import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';

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
              hintText: 'البريد الإلكتروني',
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.textgreyColor,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'نسيت كلمة المرور؟',
              style: TextStyles.semiBold14.copyWith(
                color: AppColors.lightprimaryColor,
              ),
            ),
            SizedBox(height: 33),
            CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
            SizedBox(height: 33),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لا تمتلك حساب؟ ',
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.textgreyColor,
                  ),
                ),
                Text(
                  'قم بإنشاء حساب',
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
