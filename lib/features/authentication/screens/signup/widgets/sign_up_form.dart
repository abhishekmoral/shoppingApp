import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mykart/features/authentication/screens/signup/verify_email.dart';
import 'package:mykart/features/authentication/screens/signup/widgets/privacy_policy_check_box.dart';

import '../../../../../common/widgets/button/elevated_button.dart';

import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/texts.dart';

class USignupForm extends StatelessWidget {
  const USignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            /// First Name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: USizes.spaceBtwInputFields),

            /// Last Name.
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwSections),

        /// Email
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: USizes.spaceBtwSections),

        /// Phone Number
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: USizes.spaceBtwSections),

        /// PassWord
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),

        /// Privacy policy checkBox
        UPrivacyPolicyCheckBox(),
        SizedBox(height: USizes.spaceBtwItems),

        /// Create Account
        UElevatedButton(
          onPressed: () => Get.to(() => VerifyEmailScreen()),
          child: Text(UTexts.createAccount),
        ),
      ],
    );
  }
}
