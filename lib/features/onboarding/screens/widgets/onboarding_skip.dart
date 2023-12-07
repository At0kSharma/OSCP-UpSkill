import 'package:flutter/material.dart';
import 'package:oscp_upskill/features/onboarding/controllers/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.0,
      right: 20.0,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text(
          "Skip",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
