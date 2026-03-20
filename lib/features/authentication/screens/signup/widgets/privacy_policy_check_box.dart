import 'package:flutter/material.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/texts.dart';

class UPrivacyPolicyCheckBox extends StatelessWidget {
  const UPrivacyPolicyCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(text: UTexts.iAgreeTo),
                  TextSpan(
                    text: UTexts.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: UColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: UColors.primary,
                    ),
                  ),
                  TextSpan(text: UTexts.and),
                  TextSpan(
                    text: UTexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: UColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: UColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
