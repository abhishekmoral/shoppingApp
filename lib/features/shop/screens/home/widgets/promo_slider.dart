import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mykart/features/shop/controllers/home/home_controller.dart';

import '../../../../../common/widgets/images/rounded_images.dart';

import '../../../../../utils/constant/sizes.dart';
import 'banners_bot_navigation.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        /// Slider
        CarouselSlider(
          items: banners
              .map((banners) => URoundedImage(imageUrl: banners))
              .toList(),

          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) => controller.onPageChanged(index),
          ),
          carouselController: controller.carouselController,
        ),
        SizedBox(height: USizes.spaceBtwItems),
        BannersDotNavigation(),
      ],
    );
  }
}
