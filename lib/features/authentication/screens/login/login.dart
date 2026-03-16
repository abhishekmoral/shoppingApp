import 'package:flutter/material.dart';

import 'package:mykart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mykart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mykart/utils/constant/sizes.dart';
import 'package:mykart/utils/constant/texts.dart';
import '../../../../common/Style/padding.dart';
import '../../../../common/widgets/button/social_buttons.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// --------Header--------
              /// Title and Subtitle
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),

              /// --------Form----------
              ULoginForm(),
              SizedBox(height: USizes.spaceBtwSections),

              /// --------Divider-------
              UFormDivider(title: UTexts.orSignInWith),
              SizedBox(height: USizes.spaceBtwSections),

              /// --------Footer--------
              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
