import 'package:flutter/material.dart';
import 'package:mykart/utils/constant/sizes.dart';

import '../../../../../common/widgets/custom_shape/circular_container.dart';

import '../../../../../common/widgets/custom_shape/clipper/rounded_edges_container.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/helpers/device_helper.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: USizes.homePrimaryHeaderHeight,
        color: UColors.primary,
        child: Stack(
          children: [
            /// Circular Container
            Positioned(
              top: -150,
              right: -160,
              child: UCircularController(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),

            /// Circular Container
            Positioned(
              top: 50,
              right: -250,
              child: UCircularController(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),

            /// Child
            child,
          ],
        ),
      ),
    );
  }
}
