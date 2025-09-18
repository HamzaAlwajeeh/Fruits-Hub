import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: S.of(context).FullName,
              textInputType: TextInputType.text,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: S.of(context).Email,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: S.of(context).Password,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.textgreyColor,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
