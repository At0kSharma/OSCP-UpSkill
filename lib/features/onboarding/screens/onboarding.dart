import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oscp_upskill/features/onboarding/controllers/onboarding_controller.dart';
import 'package:oscp_upskill/features/onboarding/screens/widgets/onboarding_page.dart';
import 'package:oscp_upskill/features/onboarding/screens/widgets/onboarding_skip.dart';
import 'package:oscp_upskill/utils/constant/image_strings.dart';
import 'package:oscp_upskill/utils/constant/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ImagesStrings.onBoardingImage,
                logoImage: ImagesStrings.onBoardingLogoImage,
                title: TextStrings.onBoardingtitle,
                subTitle: TextStrings.onBoardingSubtitle,
              ),
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          // const OnBoardingDotNavigation(),

          ///Circular Button
          // const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
