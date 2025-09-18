import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/custom_check_box.dart';

class CustomTearmsAndConditions extends StatelessWidget {
  const CustomTearmsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        const SizedBox(width: 16),
        // Row(
        //   children: [
        //     Text('من خلال إنشاء حساب ، فإنك توافق على'),
        //     Text(' لشروط والأحكام الخاصة بنا'),
        //   ],
        // ),
      ],
    );
  }
}
