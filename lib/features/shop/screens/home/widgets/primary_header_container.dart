import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shape/circular_container.dart';

import '../../../../../common/widgets/custom_shape/clipper/rounded_edges_container.dart';
import '../../../../../utils/constant/Colors.dart';
import '../../../../../utils/helpers/device_helper.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: UDeviceHelper.getScreenHeight(context) * 0.4,
        color: UColors.primary,
        child: Stack(
          children: [
            /// Circular Container
            Positioned(
              top: -150,
              right: -160,
              child: UCircularController(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),

            /// Circular Container
            Positioned(
              top: 50,
              right: -250,
              child: UCircularController(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
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
