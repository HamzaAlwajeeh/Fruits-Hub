import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      child: GestureDetector(
        onTap: () {
          onChanged(!isChecked);
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
                  : const SizedBox(),
        ),
      ),
    );
  }
}
