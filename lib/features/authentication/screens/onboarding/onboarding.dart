import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mykart/utils/constant/images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Lottie.asset(UImages.onboarding1Animation),
                  Text("",)
                ],
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
