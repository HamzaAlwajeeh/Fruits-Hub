import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });
  final VoidCallback onTap;
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(width: 1, color: Color(0xffDDDFDF)),
          ),
          leading: SvgPicture.asset(icon),
          title: Text(
            text,
            style: TextStyles.semiBold16,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
