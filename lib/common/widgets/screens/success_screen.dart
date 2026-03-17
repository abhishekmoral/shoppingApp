import 'package:flutter/material.dart';
import 'package:mykart/common/Style/padding.dart';

import '../../../utils/constant/images.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/constant/texts.dart';
import '../../../utils/helpers/device_helper.dart';
import '../button/elevated_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onTap,
  });

  final String title, subTitle, image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// ---------Image--------
              Image.asset(
                image,
                height: UDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              /// --------Title-----------
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              /// --------SubTitle-------
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              /// ---------Continue ----------
              UElevatedButton(onPressed: onTap, child: Text("Continue")),
            ],
          ),
        ),
      ),
    );
  }
}
