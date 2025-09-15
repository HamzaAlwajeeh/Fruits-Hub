import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/splash/presentation/views/splash_view.dart';
import 'package:fruits_hub/core/helper/functions/on_generate_routes.dart';

void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
