import 'package:flutter/material.dart';
import 'package:oscp_upskill/features/onboarding/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: 50.0,
      left: 20.0,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const WormEffect(
          activeDotColor: Colors.black,
          dotHeight: 10.0,
          dotWidth: 10.0,
        ),
      ),
    );
  }
}
