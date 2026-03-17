import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mykart/common/Style/padding.dart';
import 'package:mykart/common/widgets/button/elevated_button.dart';
import 'package:mykart/common/widgets/screens/success_screen.dart';
import 'package:mykart/features/authentication/screens/login/login.dart';
import 'package:mykart/features/authentication/screens/signup/signup.dart';
import 'package:mykart/utils/constant/images.dart';
import 'package:mykart/utils/constant/sizes.dart';
import 'package:mykart/utils/constant/texts.dart';
import 'package:mykart/utils/helpers/device_helper.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => SignupScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            /// ---- Image-------
            children: [
              Image.asset(
                UImages.mailSentImage,
                height: UDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              /// -------Title--------
              Text(
                UTexts.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              /// -----Email -----------
              Text(
                'Unknownpro@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              /// --------SubTitle-------
              Text(
                UTexts.verifyEmailSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              /// ---------Continue ----------
              UElevatedButton(
                onPressed: () => Get.to(
                  () => SuccessScreen(
                    title: UTexts.accountCreatedTitle,
                    subTitle: UTexts.accountCreatedSubTitle,
                    image: UImages.accountCreatedImage,
                    onTap: () {},
                  ),
                ),
                child: Text(UTexts.uContinue),
              ),

              /// -------Resend Email -------
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(UTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
