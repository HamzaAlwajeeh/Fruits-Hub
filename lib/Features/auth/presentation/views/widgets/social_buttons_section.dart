import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/Custom_social_button.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SocialButtonsSection extends StatelessWidget {
  const SocialButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        CustomSocialButton(
          onTap: () {},
          text: S.of(context).ContinueWithGoogle,
          icon: Assets.imagesGoogleIcon,
        ),
        CustomSocialButton(
          onTap: () {},
          text: S.of(context).ContinueWithApple,
          icon: Assets.imagesAppleIcon,
        ),
        CustomSocialButton(
          onTap: () {},
          text: S.of(context).ContinueWithFacebook,
          icon: Assets.imagesFacebookIcon,
        ),
      ],
    );
  }
}
