import 'package:flutter/material.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product/cart/cart_counter_icon.dart';
import '../../../../../utils/constant/Colors.dart';
import '../../../../../utils/constant/texts.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      /// Title And SubTitle.
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// -------Title -------
          Text(
            UTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: UColors.grey),
          ),

          /// ------Subtitle --------
          Text(
            UTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),
        ],
      ),

      /// ------BagIcon --------
      action: [UCartCounterIcon()],
    );
  }
}
