import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/helpers/device_helper.dart';
import '../../../utils/helpers/helper_function.dart';

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.action,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: USizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,

        /// Leading
        leading: showBackArrow
            ? IconButton(
                onPressed: Get.back,
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? UColors.white : UColors.dark,
                ),
              )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,

        /// Title
        title: title,

        /// Actions
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}
