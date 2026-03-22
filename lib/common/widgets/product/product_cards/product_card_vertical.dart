import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mykart/common/widgets/Icons/Circular_icon.dart';
import 'package:mykart/common/widgets/custom_shape/rounded_container.dart';
import 'package:mykart/common/widgets/images/rounded_images.dart';
import 'package:mykart/utils/constant/Colors.dart';
import 'package:mykart/utils/constant/images.dart';
import 'package:mykart/utils/helpers/helper_function.dart';

import '../../../../utils/constant/sizes.dart';
import '../../../Style/shadow.dart';
import '../../texts/product_title_text.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: UShadow.verticalProductShadow,
        borderRadius: BorderRadius.circular(USizes.productImageRadius),
        color: dark ? UColors.darkGrey : UColors.white,
      ),
      child: Column(
        children: [
          /// Thumbnail , favourite Button And Discount Tags.
          URoundedContainer(
            width: 180,
            padding: const EdgeInsets.all(USizes.sm),
            backgroundColor: dark ? UColors.dark : UColors.light,
            child: Stack(
              children: [
                /// Thumbnail,
                URoundedImage(imageUrl: UImages.productImage1),

                /// Discount Tag.
                Positioned(
                  top: 12.0,
                  child: URoundedContainer(
                    radius: USizes.sm,
                    backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: USizes.sm,
                      vertical: USizes.xs,
                    ),
                    child: Text(
                      '20%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: UColors.black),
                    ),
                  ),
                ),

                /// Favourite Button.
                Positioned(
                  right: 0,
                  top: 0,
                  child: UCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),
          SizedBox(height: USizes.spaceBtwItems),
          Column(
            children: [
              UProductTitleText(title: 'Blue Bata Shoes', smallSize: true),
              SizedBox(height: USizes.spaceBtwItems / 2),
              Text('Bata', style: Theme.of(context).textTheme.labelMedium),
            ],
          ),
        ],
      ),
    );
  }
}
