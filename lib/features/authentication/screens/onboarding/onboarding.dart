import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mykart/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mykart/utils/constant/images.dart';
import 'package:mykart/utils/constant/sizes.dart';
import 'package:mykart/utils/constant/texts.dart';
import 'package:mykart/utils/helpers/device_helper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(
                animation: UImages.onboarding1Animation,
                title: UTexts.onBoardingTitle1,
                subtitle: UTexts.onBoardingTitle1,
              ),
              OnBoardingPage(
                animation: UImages.onboarding2Animation,
                title: UTexts.onBoardingTitle2,
                subtitle: UTexts.onBoardingTitle2,
              ),
              OnBoardingPage(
                animation: UImages.onboarding3Animation,
                title: UTexts.onBoardingTitle3,
                subtitle: UTexts.onBoardingTitle3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
