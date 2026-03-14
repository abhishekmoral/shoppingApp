import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mykart/utils/constant/images.dart';
import 'package:mykart/utils/constant/sizes.dart';
import 'package:mykart/utils/constant/texts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: USizes.defaultSpace, left: USizes.defaultSpace,top:
                ),
                child: Column(
                  children: [
                    Lottie.asset(UImages.onboarding1Animation),
                    Text(
                      UTexts.onBoardingTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      UTexts.onBoardingSubTitle1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Lottie.asset(UImages.onboarding2Animation),
              Lottie.asset(UImages.onboarding3Animation),
            ],
          ),
        ],
      ),
    );
  }
}
