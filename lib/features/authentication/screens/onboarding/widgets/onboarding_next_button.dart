import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mykart/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constant/sizes.dart';

class OnBoardingNextBotton extends StatelessWidget {
  const OnBoardingNextBotton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      right: 0,
      left: 0,
      bottom: USizes.spaceBtwItems * 3,
      child: UElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(
          () =>
              Text(controller.currentIndex.value == 2 ? "GetStarted" : "Next"),
        ),
      ),
    );
  }
}
