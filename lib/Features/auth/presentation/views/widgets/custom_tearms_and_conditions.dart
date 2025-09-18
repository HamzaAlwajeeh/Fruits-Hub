import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/custom_check_box.dart';

class CustomTearmsAndConditions extends StatefulWidget {
  const CustomTearmsAndConditions({super.key});

  @override
  State<CustomTearmsAndConditions> createState() =>
      _CustomTearmsAndConditionsState();
}

class _CustomTearmsAndConditionsState extends State<CustomTearmsAndConditions> {
  bool isAcceptTearms = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChanged: (value) {
            isAcceptTearms = value;
            setState(() {});
          },
          isChecked: isAcceptTearms,
        ),
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
