import 'package:flutter/material.dart';

import '../../../utils/constant/Colors.dart';
import '../../../utils/constant/images.dart';
import '../../../utils/constant/sizes.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Button
        buildButton(UImages.googleIcon, () {}),
        SizedBox(width: USizes.spaceBtwItems),

        /// FaceBook Button
        buildButton(UImages.facebookIcon, () {}),
      ],
    );
  }

  Container buildButton(String image, VoidCallback onPrassed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: UColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton.filled(
        onPressed: onPrassed,
        icon: Image.asset(image, height: USizes.iconMd, width: USizes.iconMd),
      ),
    );
  }
}
