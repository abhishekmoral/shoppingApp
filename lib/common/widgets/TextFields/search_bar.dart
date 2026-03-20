import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mykart/common/Style/shadow.dart';

import '../../../utils/constant/Colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/constant/texts.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: USizes.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
          color: UColors.white,
          boxShadow: UShadow.searchBarShadow,
        ),
        child: Row(
          children: [
            /// ------Search Icon ------
            Icon(Iconsax.search_normal, color: UColors.darkGrey),
            SizedBox(width: USizes.spaceBtwItems),
            /// Search Bar Title ----
            Text(
              UTexts.searchBarTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
