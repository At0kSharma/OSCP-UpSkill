import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oscp_upskill/features/onboarding/screens/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
