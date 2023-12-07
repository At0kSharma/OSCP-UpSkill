import 'package:flutter/material.dart';
import 'package:oscp_upskill/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.logoImage,
    required this.title,
    required this.subTitle,
  });

  final String image, logoImage, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image(
            width: HelperFunctions.screenWidth() * 0.75,
            height: HelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60.0,
          ),
          Image(
            width: HelperFunctions.screenWidth() * 0.75,
            height: HelperFunctions.screenWidth() * 0.2,
            image: AssetImage(logoImage),
          ),
        ],
      ),
    );
  }
}
