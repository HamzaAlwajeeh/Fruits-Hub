import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CustomOrDivider extends StatelessWidget {
  const CustomOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 1, color: Color(0xffDDDFDF))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text(S.of(context).Or, style: TextStyles.semiBold16),
        ),
        Expanded(child: Divider(thickness: 1, color: Color(0xffDDDFDF))),
      ],
    );
  }
}
