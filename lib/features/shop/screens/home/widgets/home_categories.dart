import 'package:flutter/material.dart';
import 'package:mykart/utils/constant/images.dart';
import '../../../../../common/widgets/custom_shape/circular_container.dart';
import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constant/Colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/texts.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        ///-------- Section Heading ----
        children: [
          Text(
            UTexts.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),

          SizedBox(height: USizes.spaceBtwItems),

          /// -------Categories ListView --------
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(width: USizes.spaceBtwItems);
              },
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return UVerticalImageText(
                  title: 'Sport Categories',
                  image: UImages.sportsIcon,
                  textColor: UColors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
