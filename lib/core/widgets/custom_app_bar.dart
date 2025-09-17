import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

AppBar customAppBar({
  required BuildContext context,
  required String title,
  bool isFirstPage = false,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Visibility(
      visible: !isFirstPage,
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
    title: Text(title, style: TextStyles.bold19),
    centerTitle: true,
  );
}
