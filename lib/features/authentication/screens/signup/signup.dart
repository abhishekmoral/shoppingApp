import 'package:flutter/material.dart';

import 'package:mykart/common/Style/padding.dart';

import 'package:mykart/common/widgets/button/social_buttons.dart';
import 'package:mykart/common/widgets/login_signup/form_divider.dart';
import 'package:mykart/features/authentication/screens/signup/widgets/sign_up_form.dart';

import 'package:mykart/utils/constant/sizes.dart';
import 'package:mykart/utils/constant/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///--------Header------
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              ///--------Form---------
              USignupForm(),
              SizedBox(height: USizes.spaceBtwSections),

              /// -----Divider--------
              UFormDivider(title: UTexts.orSignupWith),
              SizedBox(height: USizes.spaceBtwSections),

              /// -----Footer---------
              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
