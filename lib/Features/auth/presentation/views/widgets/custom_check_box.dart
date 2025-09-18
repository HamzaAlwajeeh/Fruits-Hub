import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      child: GestureDetector(
        onTap: () {
          isChecked = !isChecked;
          setState(() {});
        },
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isChecked ? AppColors.primaryColor : Colors.white,
            border: Border.all(
              color: isChecked ? Colors.transparent : Color(0xffDDDFDF),
              width: 1.50,
            ),
          ),
          child:
              isChecked
                  ? Padding(
                    padding: const EdgeInsets.all(2),
                    child: SvgPicture.asset(Assets.imagesCheckIcon),
                  )
                  : null,
        ),
      ),
    );
  }
}
