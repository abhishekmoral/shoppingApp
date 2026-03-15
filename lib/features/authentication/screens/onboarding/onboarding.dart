import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'package:mykart/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mykart/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mykart/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mykart/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mykart/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mykart/utils/constant/images.dart';
import 'package:mykart/utils/constant/sizes.dart';
import 'package:mykart/utils/constant/texts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            /// Scrollable page
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
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

            /// Indicator
            OnBoardingDotNavigation(),

            /// Bottom Button.
            OnBoardingNextBotton(),

            /// Skip Button.
            OnBoardingSkipButton(),
          ],
        ),
      ),
    );
  }
}
