import 'package:flutter/material.dart';
import 'package:mykart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mykart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mykart/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:mykart/utils/constant/sizes.dart';
import '../../../../common/widgets/TextFields/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
    );
  }
}
