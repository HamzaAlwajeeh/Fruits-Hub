import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'البريد الإلكتروني',
            ),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.textgreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
