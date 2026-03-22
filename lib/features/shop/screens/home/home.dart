import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mykart/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:mykart/features/shop/controllers/home/home_controller.dart';
import 'package:mykart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mykart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mykart/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:mykart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:mykart/utils/constant/images.dart';
import 'package:mykart/utils/constant/sizes.dart';
import 'package:mykart/utils/constant/texts.dart';
import '../../../../common/widgets/TextFields/search_bar.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -----Upper Part ------
            Stack(
              children: [
                /// ------ Total Height +10;----------
                SizedBox(height: USizes.homePrimaryHeaderHeight + 10),

                /// ------Primary Header Container -------
                UPrimaryHeaderContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// -------AppBar--------
                      UHomeAppBar(),
                      SizedBox(height: USizes.spaceBtwSections),

                      /// ----- Home Categories.
                      UHomeCategories(),
                    ],
                  ),
                ),

                /// -----Search Bar --------
                USearchBar(),
              ],
            ),

            /// ------Lower Part ------
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  /// Banner
                  UPromoSlider(
                    banners: [
                      UImages.homeBanner1,
                      UImages.homeBanner2,
                      UImages.homeBanner3,
                      UImages.homeBanner4,
                      UImages.homeBanner5,
                    ],
                  ),
                  SizedBox(height: USizes.spaceBtwSections),

                  /// Section Heading.
                  USectionHeading(
                    title: UTexts.popularProduct,
                    onPressed: () {},
                  ),
                  SizedBox(height: USizes.spaceBtwItems),

                  /// GridView Of Product Cards.
                  UGridLayOut(
                    itemCount: 10,
                    itemBuilder: (context, index) => UProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
