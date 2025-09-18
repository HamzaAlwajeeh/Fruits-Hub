import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'sign-up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: S.of(context).NewAccount),
      body: SignUpViewBody(),
    );
  }
}
